

#health

execute store result score temp temp run data get entity @s Health 10
execute store result entity @s Health float 0.07 run scoreboard players get temp temp

#flag 
tag @s add balanced