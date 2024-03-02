#20hz on an arbitrary player holding a spawner

#Mark the player
tag @s add holding_spawner

#Raycasting, my beloved (finds spawner)
scoreboard players set n temp 200
execute at @s anchored eyes run function spawner_tweaker:spawner_tweaking/player/raycast

#Branch to the display on the spawner
execute as 38e349da-d05c-47c9-85c5-dad3300233dc at @s run function spawner_tweaker:spawner_tweaking/display_tick with block ~ ~ ~

#Interaction tickage
tp 267e6e48-4a17-42b3-bf89-dd2b69b0818d @s
execute as 267e6e48-4a17-42b3-bf89-dd2b69b0818d at @s run function spawner_tweaker:spawner_tweaking/interaction/interaction_tick

#Set loaded flag
scoreboard players set loaded spawner_tweaker 1
scoreboard players set holding_spawner spawner_tweaker 1
