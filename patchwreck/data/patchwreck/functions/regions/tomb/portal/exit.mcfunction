#> patchwreck:regions/tomb/portal/exit

execute positioned 140 155 115 at @s[distance=..5] if block ~ ~-0.2 ~ minecraft:end_portal_frame run execute in minecraft:overworld run teleport @s 1000 100 1000
