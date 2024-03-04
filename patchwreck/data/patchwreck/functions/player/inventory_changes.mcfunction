#Happens the moment inventory changes, max 1 time per tick

#Remove tags and flags
tag @s remove beetrooter

#Store data
data modify storage link:temp Player.inventory set value []
data modify storage link:temp Player.inventory set from entity @s Inventory

#Effects
execute if data storage link:temp Player.inventory[{tag:{bloodleftover:1b}}] run tag @s add beetrooter
execute if data storage link:temp Player.inventory[{tag:{bloodbeet:1b}}] run tag @s add beetrooter
execute if entity @s[tag=beetrooter] run function manoloesmanolo:bloodbeet/count_beets