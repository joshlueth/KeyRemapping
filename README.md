# KeyRemapping
This repository is a collection of various keyboard remapping scripts for Windows and Linux. Any files that end in .ahk are AutoHotkey scripts that depend on AutoHotkey v2. 

The main branch includes scripts that currently work and are in use on my Windows laptop.

The testing branch includes testing scripts that were used when first getting scripts working, saved for posterity.

## Remapping Keys/Keyboard Shortcuts

CapsLock_Remap2 remaps CapsLock to Escape when pressed and released, and to Control when pressed in conjunction with any other input, keyboard or mouse. Note that this appears not to work when on higher level permissions, likely where the keyboard input is redirected before the script takes effect. As far as I know, this is whatever requires administrator access, such as a command prompt run as administrator or a game where the anti-cheat requires administrator access.

WindowAlwaysOnTop maps Alt+Space to making a window stay always on top while focus is on a different window. This is most useful with, for example, a terminal to be able to use Google while referencing previously typed commands.

keylogger, when ran, opens up a window that logs all key presses. It can be used to check what combinations of keys are both being pressed and being interpreted, and is excellent for testing if key remapping scripts are working.

## How to Run Scripts

In order to run the scripts, you need to have AutoHotkey.exe added to your PATH.

You find how to run a script from AutoHotkey documentation. You can click on the script in the file explorer or run it from the command line via "AutoHotkey.exe Script_Name.ahk".

In order to run scripts on computer activation, create a shortcut and place it in your windows startup folder, C:\Users\ *Username*\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup, replacing *Username* with your computer username for the desired user for which to run the scripts.

The scripts will have separate icons visible in the system tray (the up arrow to the left of the WiFi-Volume-Battery icons that expanded into an icon menu). By right-clicking on the icons, the scripts can be reloaded, exited, paused, or other options.

## On other systems:

For Always-On-Top, the command-line can be used to toggle a window on top. Assign
wmctrl -r :ACTIVE: -b toggle,above
to the desired keyboard shortcut either in some variant of AutoHotKey or AutoKey, or by using the default setting of custom keyboard shortcuts.

For switching the Caps Lock to Escape when pressed alone and Control when in conjunction with any other key, some utilities to potentially use, again beyond the typical AutoHotKey and AutoKey, are xcape, setxkbmap, and xmodmap.

The method used is with setxkbmap and xcape. Install xcape from https://github.com/alols/xcape, and then add the following to the startup script (likely .bashrc or .cshrc, or potentially .profile)
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape' [-t 100]

### Last Updated:
Joshua Lueth
4/14/2025
