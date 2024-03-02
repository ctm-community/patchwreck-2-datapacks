execute store result storage enderayo:demonomicon Amount float 0.01 run scoreboard players get $souls enderayo.demonomicon

execute store result score $slot enderayo.demonomicon run data get entity @s Inventory[{tag: {Demonomicon: 1b}}].Slot

execute if score $slot enderayo.demonomicon matches -106 run data modify storage enderayo:demonomicon Zone set value weapon
execute if score $slot enderayo.demonomicon matches 0..8 run data modify storage enderayo:demonomicon Zone set value hotbar
execute if score $slot enderayo.demonomicon matches 9..35 run data modify storage enderayo:demonomicon Zone set value inventory

execute if data storage enderayo:demonomicon {Zone: weapon} run data modify storage enderayo:demonomicon Slot set value offhand
execute if data storage enderayo:demonomicon {Zone: inventory} run scoreboard players remove $slot enderayo.demonomicon 9
execute unless data storage enderayo:demonomicon {Zone: weapon} store result storage enderayo:demonomicon Slot byte 1 run scoreboard players get $slot enderayo.demonomicon

execute as @s run function enderayo:items/demonomicon_update_macro with storage enderayo:demonomicon
