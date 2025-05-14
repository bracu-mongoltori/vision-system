#!/usr/bin/bash

#mpv --no-audio --no-config --no-cache --no-border --untimed --no-demuxer-thread --vd-lavc-threads=1 --osc=no --geometry=40%+{x}+{y}/2 --vf=hflip  rtsp://admin:admin123@192.168.1.90:554/Streaming/Channels/101 &

gnome-terminal --tab -- bash -c "echo 'ros2 run joy_joy_node'; ros2 run joy joy_node"
gnome-terminal --tab -- bash -c "echo 'ros2 run control_node Controller'; ros2 run control_node Controller"
gnome-terminal --tab -- bash -c "echo 'ros2 run rover_node rover_run'; ros2 run rover_node rover_run"
mpv --no-audio --no-config --no-cache --no-border --untimed --no-demuxer-thread --vd-lavc-threads=1 --osc=no --fullscreen rtsp://localhost:8554/cam/1080 &
mpv --no-audio --no-config --no-cache --no-border --untimed --no-demuxer-thread --vd-lavc-threads=1 --osc=no -ontop --geometry=40%+0+0 rtsp://localhost:8554/cam/1080 &
mpv --no-audio --no-config --no-cache --no-border --untimed --no-demuxer-thread --vd-lavc-threads=1 --osc=no -ontop --geometry=40%+2304+0 rtsp://localhost:8554/cam/1080 &
mpv --no-audio --no-config --no-cache --no-border --untimed --no-demuxer-thread --vd-lavc-threads=1 --osc=no -ontop --geometry=40%+0+1180 rtsp://localhost:8554/cam/1080 &
mpv --no-audio --no-config --no-cache --no-border --untimed --no-demuxer-thread --vd-lavc-threads=1 --osc=no -ontop --geometry=40%+2304+1180 rtsp://localhost:8554/cam/1080 &
