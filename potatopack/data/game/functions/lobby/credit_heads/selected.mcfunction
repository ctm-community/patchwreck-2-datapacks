#Selects or unselects heads

scoreboard players set selected temp 0
execute if entity @s[tag=!selected] run scoreboard players set selected temp 1


#tags
execute if score selected temp matches 1 run tag @s add selected
execute if score selected temp matches 1 on passengers run tag @s add selected
execute if score selected temp matches 1 on passengers on passengers run tag @s add selected
execute if score selected temp matches 1 on passengers on passengers on passengers run tag @s add selected

execute if score selected temp matches 0 run tag @s remove selected
execute if score selected temp matches 0 on passengers run tag @s remove selected
execute if score selected temp matches 0 on passengers on passengers run tag @s remove selected
execute if score selected temp matches 0 on passengers on passengers on passengers run tag @s remove selected

#effects
execute if score selected temp matches 1 run playsound minecraft:block.note_block.pling player @a ~ ~ ~ 0.5 2
execute if score selected temp matches 0 run playsound minecraft:block.note_block.pling player @a ~ ~ ~ 0.5 1

#Giving+taking
execute if score selected temp matches 1 at @s run function game:lobby/credit_heads/select_bonus_do with entity @e[distance=..2,limit=1,sort=nearest,type=marker,tag=credits_marker] data
execute if score selected temp matches 0 at @s run function game:lobby/credit_heads/select_bonus_undo with entity @e[distance=..2,limit=1,sort=nearest,type=marker,tag=credits_marker] data
