*Not AI Generated*


### How to use

Run the installer and input your game folder. The installer will create a `Machine Party Modded` shortcut in the start menu (press the windows key and search to access). This shortcut is the only way to launch modded, unless you want to set up the parameters below. 

After installing, mod zip files should go into the `mods` folder in your game folder.

<details>
    <summary>Launch Parameters</summary>

    (assuming this runs from game dir)
    `--main-pack 'Machine Party-modded.pck'`

</details>

> [!WARNING]
> When running certain mods for the first time, you might be prompted to restart.
> Do not use the restart button shown. Restart the game through the start menu shortcut.
> <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4481bd18-7785-4219-8ee4-e513dc297613" />


### Why does this exist?
1. As of writing, [godot-mod-loader](https://github.com/GodotModding/godot-mod-loader) has 3 major errors when installed into Machine Party.

    A. The version of GDRE bundled with the loader is [outdated (issue #577)](https://github.com/GodotModding/godot-mod-loader/issues/577), resulting in it failing to open the game's `.pck` file.

    B. For a currently unknown reason, [autoload injection fails on Machine Party (issue #601)](https://github.com/GodotModding/godot-mod-loader/issues/601). I resolved this by manually decompiling the game, setting the autoloads, and recompiling to `.pck`. I then created an [xdelta](https://github.com/jmacd/xdelta) between the new and old `.pck` and bundle it with the installer.

    C. The hook preprocessor depends on being able to read the game's source as plain text, when this has its source in binary. When re-exporting the pck for issue B, I also change the exported source to text. There's also some stage of the processor that fails all potential methods..

3. Shortcut and installer make it more convenient than a typical godot-mod-loader install

4. Shortcut also makes toggling between vanilla and modded much easier

### Common issues

**Modded doesn't work**

Check your game folder to see if you have the `mods` folder or `Machine Party__modded.pck` file. If not, you likely installed to the wrong folder. Check the file location of the `Machine Party Modded` shortcut to find the uninstaller, then try installing again. [Use the `Browse Local Files` button](https://www.youtube.com/watch?v=_ETOk98WN1A) if you aren't sure where your game folder is.


### Known issues
- steam API (overlay) doesn't work when launching modded
