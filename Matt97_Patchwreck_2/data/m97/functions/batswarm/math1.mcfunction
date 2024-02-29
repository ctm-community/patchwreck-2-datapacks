

#set swarm position to dummy
$scoreboard players set m97_dummyPlayer m97_swarm_pos_x $(swarmXpos)
$scoreboard players set m97_dummyPlayer m97_swarm_pos_y $(swarmYpos)
$scoreboard players set m97_dummyPlayer m97_swarm_pos_z $(swarmZpos)

$scoreboard players set m97_dummyPlayer m97_swarm_motion_x $(swarmXmotion)
$scoreboard players set m97_dummyPlayer m97_swarm_motion_y $(swarmYmotion)
$scoreboard players set m97_dummyPlayer m97_swarm_motion_z $(swarmZmotion)



#set mob position to dummy
$scoreboard players set m97_dummyPlayer m97_bat_pos_x $(batXpos)
$scoreboard players set m97_dummyPlayer m97_bat_pos_y $(batYpos)
$scoreboard players set m97_dummyPlayer m97_bat_pos_z $(batZpos)

$scoreboard players set m97_dummyPlayer m97_bat_motion_x $(batXmotion)
$scoreboard players set m97_dummyPlayer m97_bat_motion_y $(batYmotion)
$scoreboard players set m97_dummyPlayer m97_bat_motion_z $(batZmotion)



#set target position to dummy
scoreboard players operation m97_dummyPlayer m97_Motion_x = m97_dummyPlayer m97_swarm_pos_x
scoreboard players operation m97_dummyPlayer m97_Motion_y = m97_dummyPlayer m97_swarm_pos_y
scoreboard players operation m97_dummyPlayer m97_Motion_z = m97_dummyPlayer m97_swarm_pos_z

scoreboard players operation m97_dummyPlayer m97_Motion_x -= m97_dummyPlayer m97_bat_pos_x
scoreboard players operation m97_dummyPlayer m97_Motion_y -= m97_dummyPlayer m97_bat_pos_y
scoreboard players operation m97_dummyPlayer m97_Motion_z -= m97_dummyPlayer m97_bat_pos_z

scoreboard players operation m97_dummyPlayer m97_Motion_x += m97_dummyPlayer m97_bat_motion_x
scoreboard players operation m97_dummyPlayer m97_Motion_y += m97_dummyPlayer m97_bat_motion_y
scoreboard players operation m97_dummyPlayer m97_Motion_z += m97_dummyPlayer m97_bat_motion_z

scoreboard players operation m97_dummyPlayer m97_Motion_x += m97_dummyPlayer m97_swarm_motion_x
scoreboard players operation m97_dummyPlayer m97_Motion_y += m97_dummyPlayer m97_swarm_motion_y
scoreboard players operation m97_dummyPlayer m97_Motion_z += m97_dummyPlayer m97_swarm_motion_z



data modify storage m97:batswarm.bat xPush set value {}
data modify storage m97:batswarm.bat yPush set value {}
data modify storage m97:batswarm.bat zPush set value {}


execute store result storage m97:batswarm.bat xPush double 0.05 run scoreboard players get m97_dummyPlayer m97_Motion_x
execute store result storage m97:batswarm.bat yPush double 0.05 run scoreboard players get m97_dummyPlayer m97_Motion_y
execute store result storage m97:batswarm.bat zPush double 0.05 run scoreboard players get m97_dummyPlayer m97_Motion_z













