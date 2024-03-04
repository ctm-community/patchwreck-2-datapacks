#Happens the moment inventory changes, max 1 time per tick

#Remove tags and flags
tag @s remove beetrooter
tag @s remove enderayo.shieldability

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
