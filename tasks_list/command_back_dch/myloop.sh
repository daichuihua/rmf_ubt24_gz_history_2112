#！/bin/bash

cd /home/dch/common_tasks 
echo 'Initialization Start!'
gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'source /opt/ros/galactic/setup.bash; source ~/rmf_ws/install/setup.bash; ros2 run rmf_demos_tasks dispatch_loop -s tinyRobot2_charger -f master_01_room -n 1 --use_sim_time; $SHELL'"
