#> matt97:weaponswap/tick

execute if entity @s[tag=!equip_sword] if entity @p[distance=..7] run function matt97:weaponswap/equip_sword
execute if entity @s[tag=equip_sword] unless entity @p[distance=..7] run function matt97:weaponswap/equip_bow
