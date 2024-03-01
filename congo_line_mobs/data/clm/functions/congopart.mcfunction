execute as @s[tag=!congostart] unless data entity @s NoGravity if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

scoreboard players operation .searchline line = @s line
scoreboard players operation .searchpart part = @s part
scoreboard players remove .searchpart part 1

execute if score .searchpart part matches 0.. as @e[tag=congopart] if score @s line = .searchline line if score @s part = .searchpart part run tag @s add this 
execute as @s at @e[tag=this] facing entity @s feet positioned ^ ^ ^1 run tp @s ~ ~ ~ facing ^ ^ ^-1
tag @e[tag=congopart] remove this
