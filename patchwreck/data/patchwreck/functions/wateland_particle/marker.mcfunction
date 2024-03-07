#Happens at the marker that spawns

#get y
execute store result score temp temp run data get entity @s Pos[1]
execute store result storage link:mobs temp.y float 1 run scoreboard players add temp temp 4

#spread + particle
execute at @s run function patchwreck:wateland_particle/spread with storage link:mobs temp

#Kill self
kill @s