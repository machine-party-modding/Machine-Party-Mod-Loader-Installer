[Setup]
AppName = godot-mod-loader for Machine Party
AppVersion = v7.0.1
DefaultDirName = {commonpf32}\Steam\steamapps\common\party project\Machine Party_Windows
InfoBeforeFile = before_info.txt
DirExistsWarning=no

[Dirs]
Name: "{app}\addons"
Name: "{app}\mods"

[Files]
Source: "godot-mod-loader\*"; DestDir: "{app}\addons"; Flags: recursesubdirs createallsubdirs
Source: "{app}\Machine Party.pck"; DestDir: "{app}"; DestName: "Machine Party-vanilla.pck"; Flags: external
Source: "Machine Party.pck"; DestDir: "{app}"; Flags: ignoreversion overwritereadonly

[Run]
Filename: "{app}\Machine Party.exe"; Parameters: "--script 'addons/mod_loader/mod_loader_setup.gd'"; Flags: hidewizard logoutput