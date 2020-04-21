﻿namespace YoutubeDlGui.Models
{
    using System;
    using System.ComponentModel;
    using System.Diagnostics;
    using System.IO;
    using System.Linq;
    using YoutubeDlGui.Common;
    using YoutubeDlGui.Core;
    using YoutubeDlGui.Extensions;
    using YoutubeDlGui.Helpers;

    /// <summary>
    /// Defines the <see cref="OperationModel" />
    /// The Download Queue Items.
    /// </summary>
    public class OperationModel : INotifyPropertyChanged
    {
        #region Fields

        private string _duration;

        private string _fileSize;

        private int _progress;

        private string _status;

        private string _title;

        private string _url;

        #endregion Fields

        #region Constructors

        /// <summary>
        /// Initializes a new instance of the <see cref="OperationModel"/> class.
        /// </summary>
        /// <param name="operation">The operation<see cref="Operation"/></param>
        public OperationModel(Operation operation)
        {
            this.Title = operation.Title;
            this.Url = operation.Link;
            this.FileSize = FormatString.FormatFileSize(operation.FileSize);
            this.Duration = FormatString.FormatVideoLength(operation.Duration);

            this.Operation = operation;
            this.Operation.Completed += OnOperation_Completed;
            this.Operation.ProgressChanged += OnOperation_ProgressChanged;
            this.Operation.PropertyChanged += OnOperation_PropertyChanged;
            this.Operation.ReportsProgressChanged += OnOperation_ReportsProgressChanged;
            this.Operation.Started += OnOperation_Started;
            this.Operation.StatusChanged += OnOperation_StatusChanged;

            // Set Status text, so it's not empty until a StatusChanged event is fired
            this.OnOperation_StatusChanged(this, EventArgs.Empty);
        }

        #endregion Constructors

        #region Events

        /// <summary>
        /// Defines the OperationComplete
        /// </summary>
        public event OperationEventHandler OperationComplete;

        /// <summary>
        /// Defines the PropertyChanged
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;

        #endregion Events

        #region Properties

        /// <summary>
        /// Gets the Duration
        /// Gets or sets the Duration.
        /// </summary>
        public string Duration { get => this._duration; private set => this.Set(this.PropertyChanged, ref this._duration, value); }

        /// <summary>
        /// Gets the FileSize
        /// Gets or sets the FileSize.
        /// </summary>
        public string FileSize { get => this._fileSize; private set => this.Set(this.PropertyChanged, ref this._fileSize, value); }

        /// <summary>
        /// Gets the Operation
        /// </summary>
        public Operation Operation { get; private set; }

        /// <summary>
        /// Gets the Progress
        /// Gets or sets the Progress
        /// </summary>
        public int Progress { get => this._progress; private set => this.Set(this.PropertyChanged, ref this._progress, value); }

        /// <summary>
        /// Gets the ProgressText
        /// </summary>
        public string ProgressText
        {
            get
            {
                string status = string.Empty;

                switch (this.Operation.Status)
                {
                    case OperationStatus.Working:
                        status = $"{this.Operation.ProgressPercentage}%";

                        if (!string.IsNullOrEmpty(this.Status))
                            status += $" ({this.Status})";
                        break;

                    default:
                        status = this.Status;
                        break;
                }

                return status;
            }
        }

        /// <summary>
        /// Gets or sets the Status
        /// </summary>
        public string Status { get => this._status; set => this.Set(this.PropertyChanged, ref this._status, value); }

        /// <summary>
        /// Gets the Stopwatch
        /// </summary>
        public Stopwatch Stopwatch { get; private set; }

        /// <summary>
        /// Gets the Title
        /// Gets or sets the Title.
        /// </summary>
        public string Title { get => this._title; private set => this.Set(this.PropertyChanged, ref this._title, value); }

        /// <summary>
        /// Gets the Url
        /// Gets or sets the Url.
        /// </summary>
        public string Url { get => this._url; private set => this.Set(this.PropertyChanged, ref this._url, value); }

        /// <summary>
        /// Gets the ProgressMaximum
        /// </summary>
        private static int ProgressMaximum { get; } = 100;

        /// <summary>
        /// Gets the ProgressMinimum
        /// </summary>
        private static int ProgressMinimum { get; } = 0;

        #endregion Properties

        #region Methods

        /// <summary>
        /// The OnOperation_Completed
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/></param>
        /// <param name="e">The e<see cref="OperationEventArgs"/></param>
        private void OnOperation_Completed(object sender, OperationEventArgs e)
        {
            this.Stopwatch?.Stop();
            this.Stopwatch = null;

            if (File.Exists(this.Operation.Output))
            {
                this.FileSize = string.Format(new ByteFormatProvider(), "{0:fs}", this.Operation.Output);
            }
            else if (Directory.Exists(this.Operation.Output))
            {
                /* Get total file size of all affected files
                 *
                 * Directory can contain unrelated files, so make use of List properties
                 * from Operation that contains the affected files only.
                 */
                string[] fileList = null;

                ////if (this.Operation is BatchOperation)
                ////    fileList = (this.Operation as BatchOperation).DownloadedFiles.ToArray();
                ////else if (this.Operation is ConvertOperation)
                ////    fileList = (this.Operation as ConvertOperation).ProcessedFiles.ToArray();
                ////else if (this.Operation is PlaylistOperation)
                ////    fileList = (this.Operation as PlaylistOperation).DownloadedFiles.ToArray();
                ////else
                ////    throw new Exception("Couldn't get affected file list from operation " + this.Operation.GetType().Name);

                long fileSize = fileList.Sum(f => FileHelper.GetFileSize(f));

                this.FileSize = FormatString.FormatFileSize(fileSize);
            }

            this.Progress = ProgressMaximum;
            this.OperationComplete?.Invoke(this, e);
        }

        /// <summary>
        /// The OnOperation_ProgressChanged
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/></param>
        /// <param name="e">The e<see cref="ProgressChangedEventArgs"/></param>
        private void OnOperation_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            this.Progress = Math.Min(ProgressMaximum, Math.Max(ProgressMinimum, e.ProgressPercentage));
            if (!string.IsNullOrEmpty(this.Operation.ProgressText))
            {
                this.Status = this.Operation.ProgressText;
            }
            else
            {
                if (this.Wait())
                {
                    return;
                }

                this.Stopwatch?.Restart();
                this.Status = this.Operation.Speed + this.Operation.ETA;
            }
        }

        /// <summary>
        /// The OnOperation_PropertyChanged
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/></param>
        /// <param name="e">The e<see cref="PropertyChangedEventArgs"/></param>
        private void OnOperation_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            switch (e.PropertyName)
            {
                case nameof(Operation.Duration):
                    this.Duration = FormatString.FormatVideoLength(this.Operation.Duration);
                    break;

                case nameof(Operation.FileSize):
                    this.FileSize = FormatString.FormatFileSize(this.Operation.FileSize);
                    break;

                case nameof(Operation.Input):
                    this.Url = this.Operation.Input;
                    break;

                case nameof(Operation.Title):
                    this.Title = this.Operation.Title;
                    break;
            }
        }

        /// <summary>
        /// The OnOperation_ReportsProgressChanged
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/></param>
        /// <param name="e">The e<see cref="EventArgs"/></param>
        private void OnOperation_ReportsProgressChanged(object sender, EventArgs e)
        {
        }

        /// <summary>
        /// The OnOperation_Started
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/></param>
        /// <param name="e">The e<see cref="EventArgs"/></param>
        private void OnOperation_Started(object sender, EventArgs e)
        {
            this.Stopwatch = new Stopwatch();
            this.Stopwatch.Start();
        }

        /// <summary>
        /// The OnOperation_StatusChanged
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/></param>
        /// <param name="e">The e<see cref="EventArgs"/></param>
        private void OnOperation_StatusChanged(object sender, EventArgs e)
        {
            switch (this.Operation.Status)
            {
                case OperationStatus.Success:
                    this.Status = "Completed";
                    break;

                case OperationStatus.Canceled:
                case OperationStatus.Failed:
                case OperationStatus.Paused:
                case OperationStatus.Queued:
                    this.Status = this.Operation.Status.ToString();
                    break;

                case OperationStatus.Working:
                    if (!string.IsNullOrEmpty(this.Operation.ProgressText))
                    {
                        this.Status = this.Operation.ProgressText;
                    }

                    break;
            }
        }

        /// <summary>
        /// The Wait
        /// </summary>
        /// <returns>The <see cref="bool"/></returns>
        private bool Wait()
        {
            // Limit the progress update to avoid flickering.
            if (this.Stopwatch == null || !this.Stopwatch.IsRunning)
            {
                return false;
            }

            return this.Stopwatch.ElapsedMilliseconds < AppEnvironment.ProgressUpdateDelay;
        }

        #endregion Methods
    }
}