#Ticking on the true bat for the vamire servent
particle dust 0.722 0.000 0.000 0.8 ~ ~ ~ 0.1 0.1 0.1 1 2 force @a
scoreboard players add @s enderayo.vampire 1
execute if score @s enderayo.vampire matches 40.. at @s run function enderayo:mobs/battransform
