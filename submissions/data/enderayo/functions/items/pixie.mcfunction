#> enderayo:items/pixie

execute if score 10s gremloop matches 1 run effect give @a[distance=..9] regeneration 8 0 true
execute if score 10s gremloop matches 51 run effect give @a[distance=..9] regeneration 8 0 true
execute if score 10s gremloop matches 101 run effect give @a[distance=..9] regeneration 8 0 true
execute if score 10s gremloop matches 151 run effect give @a[distance=..9] regeneration 8 0 true

execute if score 5hz gremloop matches 2 run particle heart ~ ~ ~ 1.5 1 1.5 0.1 1 normal @a

#Particle loop
scoreboard players set n temp 37
execute store result storage link:mobs temp.rot float 0.5 run scoreboard players get 1hz gremloop

execute if score 5hz gremloop matches 1 at @s rotated 0 0 positioned ~ ~0.2 ~ run function enderayo:items/pixie_particle_loop_initiate with storage link:mobs temp
