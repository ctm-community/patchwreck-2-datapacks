#> matt97:weaponswap/equip_sword

playsound minecraft:item.armor.equip_gold hostile @a ~ ~ ~ 1 0.9

teleport @s ~ ~0.01 ~

item replace entity @s weapon.mainhand with minecraft:golden_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;957403255,-195474639,-2095278973,1384021552],Slot:"mainhand"}]} 1

tag @s add equip_sword
