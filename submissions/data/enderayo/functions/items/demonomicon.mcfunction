#> enderayo:items/demonomicon

kill 00000000-0001-44ef-0000-00000000002c
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID: [I; 0, 83183, 0, 44]}

schedule function enderayo:items/remove_circle 20s
scoreboard players set $cooldown enderayo.demonomicon 1800
