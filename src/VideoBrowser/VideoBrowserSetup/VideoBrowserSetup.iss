; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Cekli Browser"
#define MyAppVersion "0.1.4"
#define MyAppPublisher "Cekli Open Source"
#define MyAppURL "https://yoyokits.github.io/VideoBrowser/"
#define MyAppExeName "VideoBrowser.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0A55FC14-FA31-460E-AFFB-A599AD818A83}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Temp\CekliBrowser\v0.1.4\License.txt
InfoBeforeFile=C:\Temp\CekliBrowser\v0.1.4\Preinstallation.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=CekliBrowserSetup
SetupIconFile=C:\Temp\CekliBrowser\v0.1.4\Icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Temp\CekliBrowser\v0.1.4\VideoBrowser.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\cef.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\cef_100_percent.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\cef_200_percent.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\cef_extensions.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\CefSharp.BrowserSubprocess.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\CefSharp.BrowserSubprocess.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\CefSharp.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\CefSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\CefSharp.Wpf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\chrome_elf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\ControlzEx.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\d3dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\devtools_resources.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\Dragablz.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\icudtl.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\libcef.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\libGLESv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\log4net.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\MahApps.Metro.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\Microsoft.Win32.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\Microsoft.Xaml.Behaviors.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\netstandard.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\Ookii.Dialogs.Wpf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\README.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\snapshot_blob.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.AppContext.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Collections.Concurrent.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Collections.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Collections.NonGeneric.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Collections.Specialized.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.ComponentModel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.ComponentModel.EventBasedAsync.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.ComponentModel.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.ComponentModel.TypeConverter.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Console.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Data.Common.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.Contracts.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.Debug.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.FileVersionInfo.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.Process.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.StackTrace.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.TextWriterTraceListener.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.Tools.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.TraceSource.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Diagnostics.Tracing.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Drawing.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Dynamic.Runtime.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Globalization.Calendars.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Globalization.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Globalization.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.Compression.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.Compression.ZipFile.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.FileSystem.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.FileSystem.DriveInfo.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.FileSystem.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.FileSystem.Watcher.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.IsolatedStorage.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.MemoryMappedFiles.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.Pipes.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.IO.UnmanagedMemoryStream.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Linq.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Linq.Expressions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Linq.Parallel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Linq.Queryable.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.Http.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.NameResolution.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.NetworkInformation.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.Ping.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.Requests.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.Security.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.Sockets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.WebHeaderCollection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.WebSockets.Client.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Net.WebSockets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.ObjectModel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Reflection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Reflection.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Reflection.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Resources.Reader.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Resources.ResourceManager.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Resources.Writer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.CompilerServices.VisualC.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.Handles.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.InteropServices.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.InteropServices.RuntimeInformation.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.Numerics.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.Serialization.Formatters.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.Serialization.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.Serialization.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Runtime.Serialization.Xml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Security.Claims.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Security.Cryptography.Algorithms.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Security.Cryptography.Csp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Security.Cryptography.Encoding.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Security.Cryptography.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Security.Cryptography.X509Certificates.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Security.Principal.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Security.SecureString.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Text.Encoding.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Text.Encoding.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Text.RegularExpressions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Threading.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Threading.Overlapped.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Threading.Tasks.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Threading.Tasks.Parallel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Threading.Thread.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Threading.ThreadPool.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Threading.Timer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.ValueTuple.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Windows.Interactivity.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Xml.ReaderWriter.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Xml.XDocument.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Xml.XmlDocument.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Xml.XmlSerializer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Xml.XPath.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\System.Xml.XPath.XDocument.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\v8_context_snapshot.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\VideoBrowser.application"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\VideoBrowser.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\VideoBrowser.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\VideoBrowser.exe.manifest"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\Binaries\*"; DestDir: "{app}\Binaries"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Temp\CekliBrowser\v0.1.4\GPUCache\*"; DestDir: "{app}\GPUCache"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Temp\CekliBrowser\v0.1.4\locales\*"; DestDir: "{app}\locales"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Temp\CekliBrowser\v0.1.4\swiftshader\*"; DestDir: "{app}\swiftshader"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Temp\CekliBrowser\v0.1.4\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\Preinstallation.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Temp\CekliBrowser\v0.1.4\Icon.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

