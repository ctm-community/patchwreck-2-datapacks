#20hz on markers to make particles

execute if entity @s[tag=!initiated] facing entity @p eyes facing ^1 ^ ^ run tp @s ~ ~ ~ 0 ~
tag @s add initiated


particle electric_spark ~ ~ ~ 0 0 0 0 1 force

execute if score @s life matches ..25 at @s run tp @s ~ ~0.07 ~
execute if score @s life matches 26..35 at @s run tp @s ~ ~0.03 ~

execute if score @s life matches 65..75 at @s run tp @s ~ ~-0.03 ~
execute if score @s life matches 76.. at @s run tp @s ~ ~-0.07 ~

execute at @s run tp @s ^ ^ ^0.5

scoreboard players add @s life 1
kill @s[scores={life=100..}]


#Loop
execute unless entity @s[tag=bloop] run scoreboard players set n temp 10
scoreboard players remove n temp 1
tag @s add bloop
execute if score n temp matches 1.. at @s run function patchwreck:mtro_particle/marker_tick

