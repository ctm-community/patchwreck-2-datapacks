#> patchwreck:void/falling
# Track how far and how long the player is falling to determine when to trigger void tether

# Calculate how far the player has fallen below their tether's anchor position
execute store result score @s patchwreck.position.dy run data get entity @s Pos[1]
scoreboard players operation @s patchwreck.position.dy -= @s patchwreck.void_tether.y

# Initiate void return sequence if either of the following conditions are met:
# 1. Player has fallen >32 blocks below their tether
execute if score @s patchwreck.position.dy matches ..-32 run tag @s add patchwreck.void_return
# 2. Player has fallen for >2 seconds with >16 blocks of air beneath them
execute if score @s patchwreck.falling matches 40.. if function patchwreck:void/depth/check run tag @s add patchwreck.void_return