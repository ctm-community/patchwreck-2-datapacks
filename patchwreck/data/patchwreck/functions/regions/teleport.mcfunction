#> patchwreck:regions/teleport
# Execute teleport function based on which portal the player is adjacent to

# Grim and Gothic
execute if entity @s[nbt={Dimension: "patchwreck:gothic"}] in minecraft:overworld run teleport @s 1000 100 1000
execute in minecraft:overworld positioned 1020 105 1005 if entity @s[distance=..5] in patchwreck:gothic run teleport @s 100 100 100

# Egyptian Tomb
execute if entity @s[nbt={Dimension: "patchwreck:tomb"}] in minecraft:overworld run teleport @s 1000 100 1000
execute in minecraft:overworld positioned 1020 105 995 if entity @s[distance=..5] in patchwreck:tomb run teleport @s 100 100 100

# Nuclear Wasteland
execute if entity @s[nbt={Dimension: "patchwreck:wasteland"}] in minecraft:overworld run teleport @s 1000 100 1000
execute in minecraft:overworld positioned 1000 105 980 if entity @s[distance=..5] in patchwreck:wasteland run teleport @s 100 100 100

# Enchanted Grove
execute if entity @s[nbt={Dimension: "patchwreck:grove"}] in minecraft:overworld run teleport @s 1000 100 1000
execute in minecraft:overworld positioned 980 105 995 if entity @s[distance=..5] in patchwreck:grove run teleport @s 100 100 100

# Neon Metropolis
execute if entity @s[nbt={Dimension: "patchwreck:metropolis"}] in minecraft:overworld run teleport @s 1000 100 1000
execute in minecraft:overworld positioned 980 105 1005 if entity @s[distance=..5] in patchwreck:metropolis run teleport @s 100 100 100

# Region teleport cleanup
tag @s remove patchwreck.teleport
