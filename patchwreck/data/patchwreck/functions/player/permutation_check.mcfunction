#Code for permutation of permuter item

#Check to see if the mainhand is empty
scoreboard players set replace temp 0
execute unless data storage link:temp Player.selected{} run scoreboard players set replace temp 1

#If mainhand is empty, store data of nearby permute item and kill it
scoreboard players set stage temp 0
execute if score replace temp matches 1.. store result score stage temp run data get entity @e[distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{permutation:1}}}] Item.tag.permuter
execute if score replace temp matches 1.. run kill @e[distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{permutation:1}}}]

#Finally, replace mainhand
execute if score stage temp matches 1 run loot replace entity @s weapon.mainhand loot patchwreck:grove/permuter_bow
execute if score stage temp matches 2 run loot replace entity @s weapon.mainhand loot patchwreck:grove/permuter_stick
execute if score stage temp matches 3 run loot replace entity @s weapon.mainhand loot patchwreck:grove/permuter_sword
execute if score stage temp matches 1.. run playsound minecraft:entity.shulker.open player @a ~ ~ ~ 1 2

#Failsafe
scoreboard players set add_permuter temp 1