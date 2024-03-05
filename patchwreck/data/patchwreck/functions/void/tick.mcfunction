#> patchwreck:void/tick

stopsound @s[tag=patchwreck.void_return] master minecraft:block.portal.ambient
playsound minecraft:entity.player.teleport master @s[tag=patchwreck.void_return] ~ ~ ~ 100 0.5
tag @s[tag=patchwreck.void_return] remove patchwreck.void_return

execute if score @s patchwreck.falling matches 10 run playsound minecraft:block.portal.ambient master @s ~ ~ ~ 100 2 1
execute if score @s patchwreck.falling matches 10 run effect give @s minecraft:darkness 4 0 true
execute if score @s patchwreck.falling matches 20 run effect give @s minecraft:levitation 1 0 true
execute if score @s patchwreck.falling matches 40.. run spreadplayers ~ ~ 1 2 true @s
execute if score @s patchwreck.falling matches 40.. run tag @s add patchwreck.void_return
