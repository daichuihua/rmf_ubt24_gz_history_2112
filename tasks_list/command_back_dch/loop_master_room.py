#! /usr/bin/python3
import os
import time

print("Start tasks......")

print("Start : %s" % time.ctime())
time.sleep( 2 )
print("End : %s" % time.ctime())

output = os.system('ros2 run rmf_demos_tasks dispatch_loop -s tinyRobot2_charger -f master_01_room -n 1 --use_sim_time')

print("Start : %s" % time.ctime())
time.sleep( 10 )
print("End : %s" % time.ctime())

output = os.system('ros2 run rmf_demos_tasks dispatch_loop -s tinyRobot1_charger -f master_02_room -n 1 --use_sim_time')

print("Start : %s" % time.ctime())
time.sleep( 10 )
print("End : %s" % time.ctime())

output = os.system('ros2 run rmf_demos_tasks dispatch_loop -s cleanerBotA_1 -f B -n 2 --use_sim_time')
print("Goodbye world!")
