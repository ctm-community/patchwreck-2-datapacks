#> enderayo:tick/player

# Demononicon
execute as @s[nbt={Inventory: [{tag: {Demonomicon: 1b}}]}] run scoreboard players enable @s enderayo.demonomicon
execute as @s[scores={enderayo.demonomicon=1..}] if score $cooldown enderayo.demonomicon matches 0 at @s run function enderayo:items/demonomicon
execute as @s[scores={enderayo.demonomicon=1..}] if score $cooldown enderayo.demonomicon matches 1.. at @s run title @s actionbar {"text":"Demonomicon's ability is on cooldown.","color":"gray","bold":false,"italic":false}
execute if score $cooldown enderayo.demonomicon matches 1.. run scoreboard players remove $cooldown enderayo.demonomicon 1
execute as @s[nbt={Inventory: [{tag: {Demonomicon: 1b}}]}] if score $cooldown enderayo.demonomicon matches 1 run title @s actionbar {"text":"Demonomicon's ability is Ready !","color":"#A10000","bold":false,"italic":false}
execute as @s[scores={enderayo.demonomicon=1..}] run scoreboard players set @s enderayo.demonomicon 0

execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=!player,distance=..5.5] add enderayo.incircle
execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=!player,distance=5.51..] remove enderayo.incircle

# Hyperdrift
execute as @s[nbt={Inventory: [{Slot: 103b, tag: {hyperdrift: 1b}}]}] run item replace entity @s armor.head with light_blue_stained_glass{display: {Name: '[{"text":"Hyper","color":"#F238FF","bold":true,"italic":false},{"text":"drift ","color":"#FF8A14","bold":true,"italic":false},{"text":"Helmet","color":"#0AA5FF","bold":true,"italic":false}]', Lore: ['{"text":"When worn, cycle between two states :","color":"gray","bold":false,"italic":false}', '[{"text":"•","color":"aqua","bold":false,"italic":false},{"text":" +3 armor","color":"gray","bold":false,"italic":false}]', '[{"text":"•","color":"#FF05B4","bold":false,"italic":false},{"text":" +3 damage & -3 armor","color":"gray","bold":false,"italic":false}]']}, HideFlags: 5, hyperdrift: {glass: 1b, light_blue: 1b}, Enchantments: [{id: "minecraft:silk_touch", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 3, Operation: 0, UUID: [I; 622958059, -1765456493, -1580124987, -2006602031], Slot: "head"}]} 1

data remove storage enderayo:storage item
data modify storage enderayo:storage item set from entity @s[nbt=!{Inventory: [{Slot: 103b, tag: {hyperdrift: {glass: 1b}}}]}] Inventory[{tag: {hyperdrift: {glass: 1b}}}]
execute store result score $item_slot enderayo.variables run data get storage enderayo:storage item.Slot
execute if score $item_slot enderayo.variables matches -106 run loot replace entity @s weapon.offhand loot patchwreck:metropolis/hyperdrift_helmet
execute unless score $item_slot enderayo.variables matches -106 if data storage enderayo:storage item run function enderayo:hyperdrift_helmet/replace_item with storage enderayo:storage item

# Ghoulguts
effect clear @s[scores={enderayo.hunger=1..}] hunger
scoreboard players set @s[scores={enderayo.hunger=1..}] enderayo.hunger 0


# Blue-Eyes White Dragon
execute as @s[predicate=enderayo:is_sneaking,scores={enderayo.shieldability=1..},nbt={SelectedItem: {id: "minecraft:shield", tag: {enderayo.shieldability: 1b}}}] if score $cooldown enderayo.shieldability matches 0 at @s run function enderayo:items/shieldability
execute as @s[predicate=enderayo:is_sneaking,scores={enderayo.shieldability=1..},nbt={Inventory: [{Slot: -106b, id: "minecraft:shield", tag: {enderayo.shieldability: 1b}}]}] if score $cooldown enderayo.shieldability matches 0 at @s run function enderayo:items/shieldability
execute as @s[scores={enderayo.shieldability=1..}] run scoreboard players set @s enderayo.shieldability 0
execute if score $cooldown enderayo.shieldability matches 1.. run scoreboard players remove $cooldown enderayo.shieldability 1
execute as @s[nbt={Inventory: [{id: "minecraft:shield", tag: {enderayo.shieldability: 1b}}]}] if score $cooldown enderayo.shieldability matches 1 run title @s actionbar {"text":"Blue-Eyes White Dragon Ability Ready !","color":"#0FB7FF","bold":false,"italic":false}
