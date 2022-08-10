#！/bin/bash

cd /home/dch/rmf_ws/src/demonstrations/rmf_demos/rmf_ubt24_gz/tasks_list
echo '--------------------------------------------------------------------------------'
echo 'Rmf Start!'
echo '--------------------------------------------------------------------------------'

gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_loop -s tinyRobot1_charger -f service_1 -n 1 --use_sim_time; $SHELL'"

sleep 5

gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_loop -s tinyRobot2_charger -f master_02_room -n 1 --use_sim_time; $SHELL'"

gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_loop -s cleanerBotA_charger1 -f clean_zone_A -n 1 --use_sim_time; $SHELL'"
gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_loop -s cleanerBotA_charger1 -f clean_zone_B -n 1 --use_sim_time; $SHELL'"
gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_loop -s cleanerBotA_charger1 -f clean_zone_C -n 1 --use_sim_time; $SHELL'"

gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_delivery -p pick_place -pd coke_dispenser -d master_01_room -di coke_ingestor --use_sim_time; $SHELL'"
