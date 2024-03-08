#> patchwreck:void/update_player_data
# Run some void return operations at less than 20hz for better game performance

# If player is on stable ground, update tether and exit
execute as @s[nbt={OnGround: 1b}] run return run function patchwreck:void/tether/create

# If player doesn't have a valid tether, there isn't a need to run any additional checks
execute if entity @s[tag=!patchwreck.valid_void_tether] run return fail

# Update scoreboards
execute store result score @s patchwreck.motion.y run data get entity @s Motion[1] 10
execute if score @s patchwreck.motion.y matches ..-5 run scoreboard players add @s patchwreck.falling 1
execute if score @s patchwreck.motion.y matches -4..-2 if entity @s[nbt={active_effects: [{id: "minecraft:slow_falling"}]}] run scoreboard players add @s patchwreck.falling 1
execute unless score @s patchwreck.motion.y matches ..-2 run scoreboard players set @s patchwreck.falling 0

# If falling was detected, run additional checks
execute unless score @s patchwreck.falling matches 0 run function patchwreck:void/falling
