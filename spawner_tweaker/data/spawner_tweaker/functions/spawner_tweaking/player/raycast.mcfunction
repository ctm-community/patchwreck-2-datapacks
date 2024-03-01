#Raycasting to find spawner
execute if block ~ ~ ~ spawner run function spawner_tweaker:spawner_tweaking/player/found_spawner

#Count down and iterate
scoreboard players remove n temp 1
execute if score n temp matches 1.. positioned ^ ^ ^0.5 run function spawner_tweaker:spawner_tweaking/player/raycast