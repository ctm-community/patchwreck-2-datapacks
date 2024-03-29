#> matt97:kitsune/archer_form

execute store result score m97_dummyPlayer m97_expected_health run data get entity @s Health

summon minecraft:skeleton ~ ~ ~ {CustomNameVisible: 0b, Health: 39f, Tags: ["m97_kitsune"], CustomName: '{"translate":"matt97.functions.kitsune.archer_form.1"}', HandItems: [{id: "minecraft:bow", Count: 1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s},{id:"minecraft:punch",lvl:1s}]}}, {}], HandDropChances: [-327.670f, 0.085f], ArmorItems: [{id: "minecraft:leather_boots", Count: 1b, tag: {display: {color: 25344}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 0, Operation: 0, UUID: [I; -294631753, 1309821605, -1391391008, 1669135823]}]}}, {id: "minecraft:leather_leggings", Count: 1b, tag: {display: {color: 25344}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 0, Operation: 0, UUID: [I; 1060644347, -2007547835, -1396501722, 940389463]}]}}, {id: "minecraft:leather_chestplate", Count: 1b, tag: {display: {color: 25344}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 0, Operation: 0, UUID: [I; 649144379, -44739488, -1740959325, -1483220764]}]}}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 533384081, -1243983576, -1112043770, 1774753011], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjAyMjg5MTUwNjYxZDUxN2FkMGQ2NzYxZGJiZjY2MWM0MGE1YWE1YjMwNDVmOTY0NGY0M2RiN2QzZWI5NDA2ZCJ9fX0="}]}}}}], ArmorDropChances: [-327.670f, -327.670f, -327.670f, -327.670f], Attributes: [{Name: "generic.max_health", Base: 39}]}

particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10 force
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1

execute as @e[type=minecraft:skeleton,sort=nearest,limit=1] run function matt97:equalize_health
execute at @s facing ^ ^ ^1 run teleport @e[type=skeleton,sort=nearest,limit=1] ~ ~ ~ ~ ~

teleport @s ~ -20000 ~
kill @s
