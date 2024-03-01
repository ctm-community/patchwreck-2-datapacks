execute if entity @s[tag=congostart] run scoreboard players add .global line 1
execute as @s run scoreboard players operation @s line = .global line

execute if entity @s[tag=congostart] run scoreboard players set .global part 0
execute as @s[tag=congoinit] run scoreboard players operation @s part = .global part
execute as @s[tag=congoinit,tag=!congoend] run scoreboard players add .global part 1

execute as @s if entity @s[tag=!congostart] run ride @s dismount
execute as @s run team join congo @s
execute if entity @s[tag=!congostart] run data merge entity @s {NoAI:1b}

execute if entity @s[tag=!congoend] as @s run function clm:generate_passenger

execute as @s run tag @s remove congoinit
execute as @s run tag @s remove buffer
execute as @s run tag @s add congopart

execute if entity @s[tag=!congoend] run function clm:congospawnmacro with storage gu:main out

#Example Command#
#/summon spider ~ ~1 ~ {Tags:["congoinit","congostart"],Passengers:[{id:"minecraft:spider",Tags:["congoinit"],Passengers:[{id:"minecraft:spider",Tags:["congoinit"],Passengers:[{id:"minecraft:spider",Tags:["congoinit"],Passengers:[{id:"minecraft:spider",Tags:["congoinit","congoend"]}]}]}]}]}
