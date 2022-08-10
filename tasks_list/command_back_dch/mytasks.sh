#！/bin/bash

cd /home/dch/rmf_ws/src/demonstrations/rmf_demos/rmf_ubt24_gz/tasks_list
echo '--------------------------------------------------------------------------------'
echo 'Rmf Start!'
gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'source /opt/ros/galactic/setup.bash; source ~/rmf_ws/install/setup.bash; ros2 launch rmf_ubt24_gz ubt24.launch.xml; $SHELL'"
echo '--------------------------------------------------------------------------------'
sleep 30
gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'source /opt/ros/galactic/setup.bash; source ~/rmf_ws/install/setup.bash; ros2 run rmf_demos_tasks dispatch_loop -s tinyRobot2_charger -f master_01_room -n 1 --use_sim_time; $SHELL'"

sleep 20
gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'source /opt/ros/galactic/setup.bash; source ~/rmf_ws/install/setup.bash; ros2 run rmf_demos_tasks dispatch_loop -s tinyRobot2_charger -f master_02_room -n 1 --use_sim_time; $SHELL'"
gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'source /opt/ros/galactic/setup.bash; source ~/rmf_ws/install/setup.bash; ros2 run rmf_demos_tasks dispatch_loop -s cleanerBotA_charger1 -f clean_zone_A -n 1 --use_sim_time; $SHELL'"
