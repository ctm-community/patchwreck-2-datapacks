#Happens the moment inventory changes, max 1 time per tick

#Remove tags and flags
tag @s remove beetrooter
tag @s remove enderayo.shieldability
tag @s remove hyperdrifter

#Store data
data modify storage link:temp Player.inventory set value []
data modify storage link:temp Player.selected set value []
data modify storage link:temp Player.inventory set from entity @s Inventory
data modify storage link:temp Player.selected set from entity @s SelectedItem

## Effects

# Bloody beetroot
execute if data storage link:temp Player.inventory[{tag:{bloodleftover:1b}}] run tag @s add beetrooter
execute if data storage link:temp Player.inventory[{tag:{bloodbeet:1b}}] run tag @s add beetrooter
execute if entity @s[tag=beetrooter] run function manoloesmanolo:bloodbeet/count_beets

# Pixie Bucket
execute if data storage link:temp Player.selected{id:"minecraft:axolotl_bucket",tag:{display:{Name:'{"text":"Lil\' Pixie","color":"#FF80C3","bold":true}'}}} run loot replace entity @s weapon.mainhand loot patchwreck:grove/bucket_of_pixie
execute if data storage link:temp Player.inventory[{Slot:-106b,id:"minecraft:axolotl_bucket",tag:{display:{Name:'{"text":"Lil\' Pixie","color":"#FF80C3","bold":true}'}}}] run loot replace entity @s weapon.offhand loot patchwreck:grove/bucket_of_pixie

# Blue eyes shield
execute if data storage link:temp Player.inventory[{Slot:-106b,id: "minecraft:shield",tag:{enderayo.shieldability:1b}}] run tag @s add enderayo.shieldability
execute if data storage link:temp Player.selected{id:"minecraft:shield",tag:{enderayo.shieldability:1b}} run tag @s add enderayo.shieldability
execute if data storage link:temp Player.inventory[{id: "minecraft:shield",tag:{enderayo.shieldability:1b}}] run tag @s add enderayo.shield_has

# Demonomicon
execute if data storage link:temp Player.inventory[{tag:{Demonomicon: 1b}}] run tag @s add enderayo.demonomicon

# Hyperdrift Helmet
execute if data storage link:temp Player.inventory[{Slot:103b,tag:{hyperdrift:1b}}] run tag @s add hyperdrifter
execute if entity @s[tag=hyperdrifter] run loot replace entity @s armor.head loot patchwreck:metropolis/hyperdrift_light_blue
execute if data storage link:temp Player.inventory[{Slot:103b,tag:{hyperdrift:{glass:1b}}}] run tag @s add hyperdrifter

data remove storage enderayo:storage item
execute unless data storage link:temp Player.inventory[{Slot:103b,tag:{hyperdrift:{glass:1b}}}] run data modify storage enderayo:storage item set from storage link:temp Player.inventory[{tag:{hyperdrift:{glass:1b}}}]
execute store result score $item_slot enderayo.variables run data get storage enderayo:storage item.Slot
execute if score $item_slot enderayo.variables matches -106 run loot replace entity @s weapon.offhand loot patchwreck:metropolis/hyperdrift_helmet
execute unless score $item_slot enderayo.variables matches -106 if data storage enderayo:storage item run function enderayo:hyperdrift_helmet/replace_item with storage enderayo:storage item
