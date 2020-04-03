# Screen-recorder-script

Basic lightweight screen recorder using ffmpeg.

The idea is to use `slop` to grab the x, y coordinates on the screen and then put those into ffmpeg and just start recording that area on the screen, toggling it on and off with a hotkey press.


Requirements:
- ffmpeg  (`sudo apt install ffmpeg`)
- libnotify (`sudo apt install libnotify`)
- slop (https://github.com/naelstrof/slop)



# Setup

`curl https://raw.githubusercontent.com/SPDUK/screen-recorder-script/master/recorder.sh > ~/screen-recorder.sh && chmod +x ~/screen-recorder.sh`




This places the script into your home directory, you can move it anywhere though 🤠.


Bind it to a shortcut on the keyboard  (e.g on GNOME)
- Open keyboard shortcuts
- Give it a name (e.g "Record Area on Screen")
- Enter `.~/screen-recorder.sh` into the "command" input
- Add a shortcut & save


Now you can just press that shortcut to start recording an area on the screen, press it again to stop recording 😊


# Why not just use [insert GUI here] instead?!

Because for some reason the popular options such as Kazam and SimpleScreenRecorder don't work correctly with my resolution scaled screen. So I made my own script 🤠