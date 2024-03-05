#> matt97:kitsune/tick

execute if entity @s[type=minecraft:skeleton,nbt=!{HurtTime:0s}] if entity @a[distance=..6,limit=1] run function matt97:kitsune/fox_form
execute if entity @s[type=minecraft:fox] if entity @p[distance=12..] run function matt97:kitsune/archer_form
