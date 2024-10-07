[Setup]
AppName=Biblia
AppVersion=0.22.5
WizardStyle=modern
DefaultDirName={autopf}\Biblia
DefaultGroupName=Biblia
UninstallDisplayIcon={app}\static\favicon.ico
Compression=lzma2
SolidCompression=yes
OutputDir=.\output
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible

[Files]
Source: "build\biblia.exe"; DestDir: "{app}"; DestName: "biblia.exe"
Source: "LICENSE"; DestDir: "{app}"
Source: "database\*"; DestDir: "{app}\database";
Source: "static\*"; DestDir: "{app}\static"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Biblia"; Filename: "{app}\biblia.exe"; IconFilename: "{app}\static\favicon.ico"
Name: "{commondesktop}\Biblia"; Filename: "{app}\biblia.exe"; IconFilename: "{app}\static\favicon.ico"

