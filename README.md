*Not AI Generated*


### How to use

**Video instructions**

**YouTube Walkthroughs:**
- [Spanish](https://youtu.be/dJ32-YxXumU)
- [Server Browser Mod](https://www.youtube.com/watch?v=bKLGPkOzQ7Y)

https://github.com/user-attachments/assets/85a38f93-981a-4405-9c06-580eedf6e454




**Text instructions**

Run the installer and **input your game folder that has the Machine Party `.exe`**. The installer will create a `Machine Party Modded` shortcut in the start menu (press the windows key and search to access). This shortcut is the only way to launch modded. Launching in any other way will give you a vanilla game instance.
    
After installing, mod zip files should go into the `mods` folder in your game folder.


### Why does this exist?
1. As of writing, [godot-mod-loader](https://github.com/GodotModding/godot-mod-loader) has 3 major errors when installed into Machine Party.

    A. The version of GDRE bundled with the loader is [outdated (issue #577)](https://github.com/GodotModding/godot-mod-loader/issues/577), resulting in it failing to open the game's `.pck` file.

    B. For a currently unknown reason, [autoload injection fails on Machine Party (issue #601)](https://github.com/GodotModding/godot-mod-loader/issues/601). I resolved this by manually decompiling the game, setting the autoloads, and recompiling to `.pck`. I then created an [xdelta](https://github.com/jmacd/xdelta) between the new and old `.pck` and bundle it with the installer.

    C. The hook preprocessor depends on being able to read the game's source as plain text, when this has its source in binary. When re-exporting the pck for issue B, I also change the exported source to text. There's also some stage of the processor that fails all potential methods..

3. Shortcut and installer make it more convenient than a typical godot-mod-loader install

4. Shortcut also makes toggling between vanilla and modded much easier


### Known issues
- [virustotal](https://www.virustotal.com/gui/file/6cc1d4afeeb7304e332ae6810fdf946f19a3ecd70f1763492eee8b2e824da6fb/detection) has a couple false positive results
- steam API (overlay) doesn't work when launching modded
