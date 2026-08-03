[Setup]
AppName = godot-mod-loader for Machine Party
AppVersion = v7.0.1
DefaultDirName = {commonpf32}\Steam\steamapps\common\party project\Machine Party_Windows
OutputBaseFilename = Machine_Party_Mod-Loader_Installer

DirExistsWarning=no
DisableReadyPage=yes

[Dirs]
Name: "{app}\addons"
Name: "{app}\mods"

[Files]
Source: "temp\*"; DestDir: "{tmp}"
Source: "godot-mod-loader\*"; DestDir: "{app}\addons"; Flags: recursesubdirs createallsubdirs

[Run]
Filename: "{tmp}\xdelta3decode.exe"; Parameters: "-d -s ""{app}\Machine Party.pck"" ""{tmp}\vanilla-to-modded.xdelta"" ""{app}\Machine Party-modded.pck""";

[Icons]
Name: "{group}\Machine Party Modded"; Filename: "{app}\Machine Party.exe"; WorkingDir: "{app}"; Parameters: "--main-pack ""Machine Party-modded.pck"""; Flags: runhidden