x, y, w, h, g, id=`slop -f "%x %y %w %h %g %i"`.split(" ")

`notify-send 'Started Recording!' --icon=dialog-information`

puts x,y,w,h,g,id

# remove +0000 from the end
time = Time.now.to_s.gsub(/\s/, '-')[0..-7]

# need to use xdotool(?) to grab the correct desktop currently active instead of :1 
`ffmpeg -f x11grab -s "#{w}"x"#{h}" -i :1.0+$#{x},#{y} -f alsa -i pulse ~/Videos/recording-#{time}.webm`

