#> matt97:weaponswap/equip_sword

playsound minecraft:item.armor.equip_gold hostile @a ~ ~ ~ 1 0.9

teleport @s ~ ~0.01 ~

item replace entity @s weapon.mainhand with minecraft:golden_sword 1

tag @s add equip_sword
