#!/usr/bin/env bash

loc=$1
world_file=$2

xterm -hold -e "sim_vehicle.py -v ArduCopter -f gazebo-iris -m --mav10 --console --map -I1 -L ${loc}" &

xterm -hold -e "roslaunch gazebo_ros empty_world.launch world_name:=${world_file}" &

exit
