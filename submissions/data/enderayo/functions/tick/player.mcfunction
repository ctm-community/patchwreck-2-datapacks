#> enderayo:tick/player


# Hyperdrift
execute as @s[nbt={Inventory: [{Slot: 103b, tag: {hyperdrift: 1b}}]}] run item replace entity @s armor.head with light_blue_stained_glass{display: {Name: '[{"text":"Hyper","color":"#F238FF","bold":true,"italic":false},{"text":"drift ","color":"#FF8A14","bold":true,"italic":false},{"text":"Helmet","color":"#0AA5FF","bold":true,"italic":false}]', Lore: ['{"text":"When worn, cycle between two states :","color":"gray","bold":false,"italic":false}', '[{"text":"•","color":"aqua","bold":false,"italic":false},{"text":" +3 armor","color":"gray","bold":false,"italic":false}]', '[{"text":"•","color":"#FF05B4","bold":false,"italic":false},{"text":" +3 damage & -3 armor","color":"gray","bold":false,"italic":false}]']}, HideFlags: 5, hyperdrift: {glass: 1b, light_blue: 1b}, Enchantments: [{id: "minecraft:silk_touch", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 3, Operation: 0, UUID: [I; 622958059, -1765456493, -1580124987, -2006602031], Slot: "head"}]} 1

data remove storage enderayo:storage item
data modify storage enderayo:storage item set from entity @s[nbt=!{Inventory: [{Slot: 103b, tag: {hyperdrift: {glass: 1b}}}]}] Inventory[{tag: {hyperdrift: {glass: 1b}}}]
execute store result score $item_slot enderayo.variables run data get storage enderayo:storage item.Slot
execute if score $item_slot enderayo.variables matches -106 run loot replace entity @s weapon.offhand loot patchwreck:metropolis/hyperdrift_helmet
execute unless score $item_slot enderayo.variables matches -106 if data storage enderayo:storage item run function enderayo:hyperdrift_helmet/replace_item with storage enderayo:storage item

