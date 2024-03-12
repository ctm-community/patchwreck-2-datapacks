#Starts the game as the player

tp @s 1000 112 1000 0 0
effect give @s blindness 2 0 true
effect give @s slow_falling 4 0 true
gamemode survival @s[gamemode=adventure]
execute at @s run playsound minecraft:teleport player @s ~ ~ ~ 1 0.7
spawnpoint @a 1000 100 1000

advancement revoke @a only game:lobby/start
advancement revoke @a only game:lobby/start2