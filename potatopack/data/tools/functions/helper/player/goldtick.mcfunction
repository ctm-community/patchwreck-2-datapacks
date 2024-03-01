#happens 20hz on all players

#How much gold?
scoreboard players add @s gold 0

#Getting the multiplier, this should really be offloaded into a seperate function but lazy
scoreboard players set multiplier gold 100
scoreboard players set alive gold 60000
scoreboard players operation alive gold < @a sincedeath
scoreboard players operation alive gold /= 60 numbers
scoreboard players operation alive gold /= 20 numbers
scoreboard players operation multiplier gold += alive gold
execute store result score difficulty game run difficulty
execute if score difficulty game = 0 numbers run scoreboard players operation multiplier gold *= 100 numbers
execute if score difficulty game = 1 numbers run scoreboard players operation multiplier gold *= 150 numbers
execute if score difficulty game = 2 numbers run scoreboard players operation multiplier gold *= 100 numbers
execute if score difficulty game = 3 numbers run scoreboard players operation multiplier gold *= 75 numbers
scoreboard players operation multiplier gold /= 100 numbers

#multiplayer adjustments
scoreboard players operation multiplier gold *= players game

#Offhand gold multiplier
scoreboard players operation multiplier gold *= @s offhandgold
scoreboard players operation multiplier gold /= 100 numbers

#Time for adding!
scoreboard players operation temp gold = multiplier gold
execute if score @s toadd > 0 numbers as @s at @s run playsound minecraft:sfx.gold ambient @a ~ ~ ~ 0.5
execute if score @s toadd > 0 numbers run scoreboard players operation @s gold += temp gold
execute if score @s toadd > 0 numbers run scoreboard players remove @s toadd 1

execute if score @s toadd > 10 numbers run scoreboard players operation temp gold *= 5 numbers
execute if score @s toadd > 10 numbers run scoreboard players operation @s gold += temp gold
execute if score @s toadd > 10 numbers run scoreboard players remove @s toadd 5

execute if score @s toadd > 100 numbers run scoreboard players operation temp gold *= 10 numbers
execute if score @s toadd > 100 numbers run scoreboard players operation @s gold += temp gold
execute if score @s toadd > 100 numbers run scoreboard players remove @s toadd 50

#or subtracting hehehe

execute if score @s toadd < 0 numbers as @s at @s run playsound minecraft:sfx.gold ambient @a ~ ~ ~ 1 2
execute if score @s toadd < 0 numbers run scoreboard players remove @s gold 100
execute if score @s toadd < 0 numbers run scoreboard players add @s toadd 1

execute if score @s toadd < -10 numbers run scoreboard players remove @s gold 1000
execute if score @s toadd < -10 numbers run scoreboard players add @s toadd 10

execute if score @s toadd < -500 numbers run scoreboard players remove @s gold 40000
execute if score @s toadd < -500 numbers run scoreboard players add @s toadd 400