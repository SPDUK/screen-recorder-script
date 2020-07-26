#!/bin/bash
if pidof ffmpeg
  then
    killall ffmpeg

    notify-send 'Stopped Recording!' --icon=dialog-information
  else 
    slop=$(slop -f "%x %y %w %h")

    read -r X Y W H < <(echo $slop)

    time=$(date +%F%T)


    for p in $(pgrep -t $(cat /sys/class/tty/tty0/active));
      do 
      d=$(awk -v RS='\0' -F= '$1=="DISPLAY" {print $2}' /proc/$p/environ 2>/dev/null); 
      [[ -n $d ]] && break; 
      done;

    # only start recording if we give a width (e.g we press escape to get out of slop - don't record)
    width=${#W}

    if [ $width -gt 0 ];
     then
      notify-send 'Started Recording!' --icon=dialog-information
      
      # records without audio input
      # for audio add "-f alsa -i pulse" to the line below (at the end before \, without "")
      ffmpeg -f x11grab -s "$W"x"$H" -framerate 60  -thread_queue_size 512  -i $d.0+$X,$Y \
       -vcodec libx264 -qp 18 -preset ultrafast \
       ~/Videos/recording-$time.mp4 || notify-send 'Recording failed!' --icon=dialog-information
    fi
fi
