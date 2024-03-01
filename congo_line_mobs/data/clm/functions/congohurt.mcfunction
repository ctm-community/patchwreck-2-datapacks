tag @s[tag=congopart] add this
scoreboard players operation .searchline line = @s line
execute as @e[tag=congopart] if score @s line = .searchline line at @s run data modify entity @s Health set from entity @e[tag=this,tag=congopart,limit=1,sort=nearest] Health
tag @s[tag=congopart] remove this