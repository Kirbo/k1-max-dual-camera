#!/bin/sh

kill -9 $(pidof mjpg_streamer)
kill -9 $(fuser /dev/video6)
kill -9 $(fuser /dev/video5)
kill -9 $(fuser /dev/video4)

# Brio 4k + K1
#mjpg_streamer -b -i "/usr/lib/mjpg-streamer/input_uvc.so -d /dev/video4" -i "/usr/lib/mjpg-streamer/input_uvc.so -d /dev/video6" -o "/usr/lib/mjpg-streamer/output_http.so -p 8080"

# C922 + K1
#mjpg_streamer -b -i "/usr/lib/mjpg-streamer/input_uvc.so -d /dev/video5" -i "/usr/lib/mjpg-streamer/input_uvc.so -d /dev/video4" -o "/usr/lib/mjpg-streamer/output_http.so -p 8080"

mjpg_streamer -b -i "/usr/lib/mjpg-streamer/input_uvc.so -d /dev/video5" -i "/usr/lib/mjpg-streamer/input_uvc.so -d /dev/video4" -o "/usr/lib/mjpg-streamer/output_http.so -p 8080"
