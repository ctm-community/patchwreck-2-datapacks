#> patchwreck:void/tether/create
# Tether the player to a position when trying to return them from the void

# Tether player to this position
execute store result score @s patchwreck.void_tether.x run data get entity @s Pos[0] 1
execute store result score @s patchwreck.void_tether.y run data get entity @s Pos[1] 1
execute store result score @s patchwreck.void_tether.z run data get entity @s Pos[2] 1

# Create backup tether if additional conditions are true
execute if block ~ ~-0.1 ~ #patchwreck:stable run scoreboard players operation @s patchwreck.void_tether_backup.x = @s patchwreck.void_tether.x
execute if block ~ ~-0.1 ~ #patchwreck:stable run scoreboard players operation @s patchwreck.void_tether_backup.y = @s patchwreck.void_tether.y
execute if block ~ ~-0.1 ~ #patchwreck:stable run scoreboard players operation @s patchwreck.void_tether_backup.z = @s patchwreck.void_tether.z

# Tag player if they have a valid tether and backup tether
execute if block ~ ~-0.1 ~ #patchwreck:stable run tag @s add patchwreck.valid_void_tether

# Reset scoreboard tracking distance from last stable position
scoreboard players set @s patchwreck.falling 0
scoreboard players set @s patchwreck.position.dy 0
