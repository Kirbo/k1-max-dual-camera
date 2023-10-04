#!/bin/sh

kill -9 $(pidof mjpg_streamer)
kill -9 $(fuser /dev/video5)
kill -9 $(fuser /dev/video4)
mjpg_streamer -b -i "/usr/lib/mjpg-streamer/input_uvc.so -d /dev/video5" -i "/usr/lib/mjpg-streamer/input_uvc.so -d /dev/video4" -o "/usr/lib/mjpg-streamer/output_http.so -p 8080"
