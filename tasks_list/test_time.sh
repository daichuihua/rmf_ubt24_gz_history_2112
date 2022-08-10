#！/bin/bash
declare -i i=10
declare -i j=1
declare -i q=1
while((i > 0))
do
  current_time=$(date  "+%H%M%S")
  
  if [ $current_time -eq 174100 ] && [ $j -eq 1 ]
  then
      echo ${current_time};
      echo 'clean zone_A';
      gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_loop -s cleanerBotA_charger1 -f clean_zone_A -n 1 --use_sim_time; $SHELL'";
      let j=2;
  else
      echo $(date +%H-%M-%S);
  fi
  
  if [ $current_time -eq 174800 ] && [ $q -eq 1 ]
  then
      echo 'clean zone_B and clean zone_C';
      gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_loop -s cleanerBotA_charger1 -f clean_zone_B -n 1 --use_sim_time; $SHELL'";
      gnome-terminal --tab --title="rmf_demos_tasks" --command="bash -c 'ros2 run rmf_demos_tasks dispatch_loop -s cleanerBotA_charger1 -f clean_zone_C -n 1 --use_sim_time; $SHELL'";
      let q=2;
  else
      echo '------------';
  fi
done


