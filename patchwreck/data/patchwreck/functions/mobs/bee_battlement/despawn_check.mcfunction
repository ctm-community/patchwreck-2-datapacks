#Check to despawn the battlement elements

scoreboard players set temp temp 1
execute positioned ~-0.5 ~-2 ~-0.5 if entity @e[dx=0,dy=3,dz=0,type=sniffer] run scoreboard players set temp temp 0
execute if score temp temp matches 1 run kill @s