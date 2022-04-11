#!/bin/bash
curl -s 'http://admin:admin@192.168.20.110/jpgimage/1/image.jpg' -o /config/www/bao_snapshot.jpg 
RETVAL=$?
if [ $RETVAL -eq 52 ] 
   then
ffmpeg -fflags discardcorrupt -t 3 -i http://admin:888888@192.168.20.33:81/videostream.cgi?user=admin&pwd=888888&resolution=32&rate=0 -y -frames:v 1 -f image2 /config/www/vstarcam_snapshot.jpg > /tmp/ffmpeg_out.txt 2>/tmp/ffmpeg_err.txt
fi

