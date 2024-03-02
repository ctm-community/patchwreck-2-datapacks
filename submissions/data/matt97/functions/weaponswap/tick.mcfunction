#> matt97:weaponswap/tick

execute if entity @s[nbt={HandItems: [{id: "minecraft:bow", Count: 1b}, {}]}] if entity @p[distance=..7] run function matt97:weaponswap/equip_sword
execute unless entity @s[nbt={HandItems: [{id: "minecraft:bow", Count: 1b}, {}]}] if entity @p[distance=8..] run function matt97:weaponswap/equip_bow
