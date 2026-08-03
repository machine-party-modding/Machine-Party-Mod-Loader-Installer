[Setup]
AppName = godot-mod-loader for Machine Party
AppVersion = v7.0.1
DefaultDirName = {commonpf32}\Steam\steamapps\common\party project\Machine Party_Windows
InfoBeforeFile = instructions.txt

[Dirs]
Name: "{app}\addons"
Name: "{app}\mods"

[Files]
Source: "godot-mod-loader\*"; DestDir: "{app}\addons"; Flags: recursesubdirs createallsubdirs
Source: "{app}\Machine Party.pck"; DestDir: "{app}\Machine Party-vanilla.pck"; Flags: external skipifsourcedoesntexist onlyifdoesntexist
Source: "Machine Party.pck"; DestDir: "{app}\Machine Party.pck"
