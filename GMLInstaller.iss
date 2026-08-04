[Setup]
AppName = godot-mod-loader for Machine Party
AppVersion = v7.0.1
DefaultDirName = {commonpf32}\Steam\steamapps\common\party project\Machine Party_Windows
OutputBaseFilename = Machine_Party_Mod-Loader_Installer

DirExistsWarning=no
DisableReadyPage=yes

[Dirs]
Name: "{app}\mods"

[Files]
Source: "delta\*"; DestDir: "{tmp}"

[InstallDelete]
Type: files; Name: "{app}\mod-hooks.zip"
Type: files; Name: "{app}\Machine Party__modded.pck"

[Run]
Filename: "{tmp}\xdelta3decode.exe"; Parameters: "-d -s ""{app}\Machine Party.pck"" ""{tmp}\vanilla-to-modded.xdelta"" ""{app}\Machine Party__modded.pck"""; Flags: runhidden

[Icons]
Name: "{group}\Machine Party Modded"; Filename: "{app}\Machine Party.exe"; WorkingDir: "{app}"; Parameters: "--main-pack ""Machine Party__modded.pck""";