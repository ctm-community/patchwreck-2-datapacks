particle minecraft:dust 0 1 0 1 ~ ~ ~ 0 0 0 0 50 force
data merge entity @s {NoGravity:1b}
scoreboard players add @s arrow_timer 1
execute if score @s arrow_timer matches 50.. run kill @s
execute as @e[nbt={inGround:1b}] run kill @s