# Screen-recorder-script

Basic lightweight screen recorder using ffmpeg.

The idea is to use `slop` to grab the x, y coordinates on the screen and then put those into ffmpeg and just start recording that area on the screen, toggling it on and off with a hotkey press.


Requirements:
- ffmpeg  (`sudo apt install ffmpeg`)
- libnotify (`sudo apt install libnotify`)
- slop (https://github.com/naelstrof/slop)



# Setup

`git clone git@github.com:SPDUK/screen-recorder-script.git` into a folder (e.g run the command when inside your `~/Projects` folder)
Or download and place the `recorder.sh` script anywhere you want

Bind it to a shortcut on the keyboard  (e.g on GNOME)
- Open keyboard shortcuts
- Give it a name (e.g "Record Area on Screen")
- Enter `./~Projects/screen-recorder-script/recorder.sh` into the "command" input
- Add a shortcut & save


Now you can just press that shortcut to start recording an area on the screen, press it again to stop recording 😊