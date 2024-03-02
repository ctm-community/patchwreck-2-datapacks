scoreboard players operation .searchline line = @s line
scoreboard players operation .searchpart part = @s part
scoreboard players remove .searchpart part 1

execute as @e[tag=congopart] if score @s line = .searchline line if score @s part = .searchpart part run tag @s add this 
execute unless entity @s[tag=congostart] unless entity @e[tag=congopart,tag=this] run function clm:congokill
tag @e[tag=congopart] remove this

scoreboard players add .searchpart part 2

execute as @e[tag=congopart] if score @s line = .searchline line if score @s part = .searchpart part run tag @s add this 
execute unless entity @s[tag=congoend] unless entity @e[tag=congopart,tag=this] run function clm:congokill
tag @e[tag=congopart] remove this

