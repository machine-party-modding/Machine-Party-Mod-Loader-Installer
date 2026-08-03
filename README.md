**How to use**

Run the installer. The installer will create a "Machine Party Modded" shortcut in the start menu (press the windows key to access). This shortcut is the only way to launch modded, unless you want to set up the parameters below.

<details>
    <summary>Launch Parameters</summary>

    (assuming this runs from game dir)
    `--main-pack 'Machine Party-modded.pck'--script 'addons/mod_loader/mod_loader_setup.gd'`

</details>

**Why does this exist?**
1. As of writing, [godot-mod-loader](https://github.com/GodotModding/godot-mod-loader) has 3 major errors when installed into Machine Party.

    A. The version of GDRE bundled with the loader is [outdated (issue #577)](https://github.com/GodotModding/godot-mod-loader/issues/577), resulting in it failing to open the game's `.pck` file.

    B. For a currently unknown reason, [autoload injection fails on Machine Party (issue #601)](https://github.com/GodotModding/godot-mod-loader/issues/601). I resolved this by manually decompiling the game, setting the autoloads, and recompiling to `.pck`. I then created an [xdelta](https://github.com/jmacd/xdelta) between the new and old `.pck` and bundle it with the installer.

    C. The hook preprocessor depends on being able to read the game's source as plain text, when this has its source in binary. When re-exporting the pck for issue B, I also change the exported source to text. There's also some stage of the processor that fails all potential methods..

3. Shortcut and installer make it more convenient than a typical godot-mod-loader install

4. Shortcut also makes toggling between vanilla and modded much easier

**known issues**
- steam API doesn't work when launching modded
