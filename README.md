# Screen-recorder-script


A simple screen recorder for linux

Requirements:
- ffmpeg  (`sudo apt install ffmpeg`)
- libnotify (`sudo apt install libnotify`)
- slop (https://github.com/naelstrof/slop)


Basic lightweight screen recorder using ffmpeg.

The idea is to use `slop` to grab the x, y coordinates on the screen and then put those into ffmpeg and just start recording that area on the screen, toggling it on and off with a hotkey press.

Might convert to crystal later just to make it a bit faster and turn it to an executable because why not 🤷