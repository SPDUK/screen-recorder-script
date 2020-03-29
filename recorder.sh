#!/bin/bash
if pidof ffmpeg
  then
    killall ffmpeg

    notify-send 'Stopped Recording!' --icon=dialog-information
  else 
    slop=$(slop -f "%x %y %w %h")

    read -r X Y W H < <(echo $slop)

    time=$(date +%F%T)


    # only start recording if we give a width (e.g we press escape to get out of slop - don't record)
    width=${#W}

    if [ $width -gt 0 ];
     then
      notify-send 'Started Recording!' --icon=dialog-information
      # records without audio for audio add: -f alsa -i pulse 
      ffmpeg \
      -nostdin -threads 4 -thread_queue_size 512 -framerate 60 \
      -f x11grab -s "$W"x"$H" \
      -i $DISPLAY.0+$X,$Y ~/Videos/recording-$time.mp4 
    fi
fi
