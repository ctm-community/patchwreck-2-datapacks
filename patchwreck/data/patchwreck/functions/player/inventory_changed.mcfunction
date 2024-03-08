#> patchwreck:player/inventory_changed
# Happens the moment inventory changes, max 1 time per tick

#Remove tags and flags
tag @s remove beetrooter
tag @s remove enderayo.shieldability
tag @s remove hyperdrifter
tag @s remove enderayo.demonomicon
tag @s remove enderayo.shield_has
tag @s remove fire_permuter

#Store data
data modify storage link:temp Player.inventory set value []
data modify storage link:temp Player.selected set value []
data modify storage link:temp Player.inventory set from entity @s Inventory
data modify storage link:temp Player.selected set from entity @s SelectedItem

## Effects

# Bloody beetroot
execute if data storage link:temp Player.inventory[{tag: {bloodleftover: 1b}}] run tag @s add beetrooter
execute if data storage link:temp Player.inventory[{tag: {bloodbeet: 1b}}] run tag @s add beetrooter
execute if entity @s[tag=beetrooter] run function manoloesmanolo:bloodbeet/count_beets

# Pixie Bucket
execute if data storage link:temp Player.selected{id: "minecraft:axolotl_bucket", tag: {display: {Name: '{"text":"Lil\' Pixie","color":"#FF80C3","bold":true}'}}} run loot replace entity @s weapon.mainhand loot patchwreck:grove/bucket_of_pixie
execute if data storage link:temp Player.inventory[{Slot: -106b, id: "minecraft:axolotl_bucket", tag: {display: {Name: '{"text":"Lil\' Pixie","color":"#FF80C3","bold":true}'}}}] run loot replace entity @s weapon.offhand loot patchwreck:grove/bucket_of_pixie

# Blue eyes shield
execute if data storage link:temp Player.inventory[{Slot: -106b, id: "minecraft:shield", tag: {enderayo.shieldability: 1b}}] run tag @s add enderayo.shieldability
execute if data storage link:temp Player.selected{id: "minecraft:shield", tag: {enderayo.shieldability: 1b}} run tag @s add enderayo.shieldability
execute if data storage link:temp Player.inventory[{id: "minecraft:shield", tag: {enderayo.shieldability: 1b}}] run tag @s add enderayo.shield_has

# Demonomicon
execute if data storage link:temp Player.inventory[{tag: {Demonomicon: 1b}}] run tag @s add enderayo.demonomicon

# Hyperdrift Helmet
execute if data storage link:temp Player.inventory[{Slot: 103b, tag: {hyperdrift: 1b}}] run tag @s add hyperdrifter
execute if score $light_blue enderayo.hyperdrift matches 1.. if entity @s[tag=hyperdrifter] run function enderayo:hyperdrift_helmet/equip_light_blue
execute if score $magenta enderayo.hyperdrift matches 1.. if entity @s[tag=hyperdrifter] run function enderayo:hyperdrift_helmet/equip_magenta
execute if data storage link:temp Player.inventory[{Slot: 103b, tag: {hyperdrift: {glass: 1b}}}] run tag @s add hyperdrifter

data remove storage enderayo:storage item
execute unless entity @s[tag=hyperdrifter] run data modify storage enderayo:storage item set from storage link:temp Player.inventory[{tag: {hyperdrift: {glass: 1b}}}]
execute store result score $item_slot enderayo.variables run data get storage enderayo:storage item.Slot
execute if score $item_slot enderayo.variables matches -106 run loot replace entity @s weapon.offhand loot patchwreck:metropolis/hyperdrift_helmet
execute unless score $item_slot enderayo.variables matches -106 if data storage enderayo:storage item run function enderayo:hyperdrift_helmet/replace_item with storage enderayo:storage item

# Permuter code
scoreboard players set add_permuter temp 0
execute unless data storage link:temp Player.inventory[{tag: {permutation: 1}}] if entity @s[tag=permuter] run function patchwreck:player/permutation_check
tag @s remove permuter
execute if data storage link:temp Player.inventory[{tag: {permutation: 1}}] run tag @s add permuter
execute if score add_permuter temp matches 1.. run tag @s add permuter

execute if data storage link:temp Player.inventory[{Slot: -106b, tag: {permutation: 1, permuter: 3}}] run tag @s add fire_permuter

# Clearing certain items
execute if data storage link:temp Player.inventory[{id: "minecraft:bamboo_raft"}] run clear @s bamboo_raft
execute if data storage link:temp Player.inventory[{id: "minecraft:minecart"}] run clear @s minecart
execute if data storage link:temp Player.inventory[{id: "minecraft:glass_bottle"}] run clear @s glass_bottle
