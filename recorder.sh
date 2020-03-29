#!/bin/bash

if pidof ffmpeg
  then
    killall ffmpeg
    notify-send 'Stopped Recording!' --icon=dialog-information
  else 
    slop=$(slop -f "%x %y %w %h %g %i")

    read -r X Y W H G ID < <(echo $slop)

    time=$(date +%F%T)

    notify-send 'Started Recording!' --icon=dialog-information

    ffmpeg -nostdin -f x11grab -s "$W"x"$H" -i :1.0+$X,$Y -f alsa -i pulse ~/Videos/recording-$time.mp4 
fi