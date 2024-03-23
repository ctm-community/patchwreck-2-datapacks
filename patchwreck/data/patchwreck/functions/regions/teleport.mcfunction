#> patchwreck:regions/teleport
# Execute teleport function based on which portal the player is adjacent to

# Grim and Gothic
execute if entity @s[nbt={Dimension: "patchwreck:gothic"}] in minecraft:overworld run teleport @s 1000 112 1000 0 0
execute in minecraft:overworld positioned 1020 105 1005 if entity @s[distance=..5] in patchwreck:gothic run teleport @s 97 0 97 -90 0

# Egyptian Tomb
execute if entity @s[nbt={Dimension: "patchwreck:tomb"}] in minecraft:overworld run teleport @s 1000 112 1000 0 0
execute in minecraft:overworld positioned 1020 105 995 if entity @s[distance=..5] in patchwreck:tomb run teleport @s 100 175 100 -90 0

# Nuclear Wasteland
execute if entity @s[nbt={Dimension: "patchwreck:wasteland"}] in minecraft:overworld run teleport @s 1000 112 1000 0 0
execute in minecraft:overworld positioned 1000 105 980 if entity @s[distance=..5] in patchwreck:wasteland run teleport @s 100 0 100 -90 0

# Enchanted Grove
execute if entity @s[nbt={Dimension: "patchwreck:grove"}] in minecraft:overworld run teleport @s 1000 112 1000 0 0
execute in minecraft:overworld positioned 980 105 995 if entity @s[distance=..5] in patchwreck:grove run teleport @s 100 100 100 180 0

# Neon Metropolis
execute if entity @s[nbt={Dimension: "patchwreck:metropolis"}] in minecraft:overworld run teleport @s 1000 112 1000 0 0
execute in minecraft:overworld positioned 980 105 1005 if entity @s[distance=..5] in patchwreck:metropolis run teleport @s 105 106 100 -90 0

# Region teleport cleanup
tag @s remove patchwreck.teleport
execute at @s run playsound minecraft:teleport ambient @s ~ ~ ~ 1 1
execute at @s run particle flash ~ ~ ~ 0 0 0 0 1 force
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 0.5 30
effect give @s minecraft:blindness 2 0 true
effect give @s minecraft:slow_falling 4 0 true
