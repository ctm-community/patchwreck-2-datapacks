#> matt97:kitsune/tick

execute if entity @s[type=minecraft:skeleton,nbt={HurtTime: 10s}] if entity @p[distance=..6] run function matt97:kitsune/fox_form
execute if entity @s[type=minecraft:fox] if entity @p[distance=12..] run function matt97:kitsune/archer_form
