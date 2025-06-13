#!/bin/bash

while true
do
  ffmpeg -re -stream_loop -1 -i "$VIDEO_URL" \
  -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
  -c:a aac -b:a 128k -ar 44100 \
  -f flv "$STREAM_URL/$STREAM_KEY"
done
