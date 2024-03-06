#> patchwreck:void/return/tick
# Ticking event for players in the middle of void return

scoreboard players add @s patchwreck.void_return 1

# Ticking effects
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0 10

# Start running void return events
execute if score @s patchwreck.void_return matches 1 run effect give @s minecraft:darkness 4 0 true
execute if score @s patchwreck.void_return matches 1 run effect give @s minecraft:levitation 3 0 true
execute if score @s patchwreck.void_return matches 1 run playsound minecraft:block.portal.ambient player @s ~ ~ ~ 100 2 1

# Use tether to create anchor point for returning player
execute if score @s patchwreck.void_return matches 50 store result storage patchwreck:storage variables.x float 1 run scoreboard players get @s patchwreck.void_tether.x
execute if score @s patchwreck.void_return matches 50 store result storage patchwreck:storage variables.y float 1 run scoreboard players get @s patchwreck.void_tether.y
execute if score @s patchwreck.void_return matches 50 store result storage patchwreck:storage variables.z float 1 run scoreboard players get @s patchwreck.void_tether.z
execute if score @s patchwreck.void_return matches 50 store result score $success patchwreck.variables run function patchwreck:void/return/use_tether with storage patchwreck:storage variables
# execute if score @s patchwreck.void_return matches 50 run tellraw @s [{"text": "Void Tether: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]

execute if score @s patchwreck.void_return matches 50 if score $success patchwreck.variables matches 0 store result storage patchwreck:storage variables.x float 1 run scoreboard players get @s patchwreck.void_tether_backup.x
execute if score @s patchwreck.void_return matches 50 if score $success patchwreck.variables matches 0 store result storage patchwreck:storage variables.y float 1 run scoreboard players get @s patchwreck.void_tether_backup.y
execute if score @s patchwreck.void_return matches 50 if score $success patchwreck.variables matches 0 store result storage patchwreck:storage variables.z float 1 run scoreboard players get @s patchwreck.void_tether_backup.z
execute if score @s patchwreck.void_return matches 50 if score $success patchwreck.variables matches 0 store result score $success patchwreck.variables run function patchwreck:void/return/use_tether with storage patchwreck:storage variables
# execute if score @s patchwreck.void_return matches 50 run tellraw @s [{"text": "Void Tether Backup: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]

execute if score @s patchwreck.void_return matches 50 if score $success patchwreck.variables matches 1 store result storage patchwreck:storage variables.x float 1 run scoreboard players get @s patchwreck.void_anchor.x
execute if score @s patchwreck.void_return matches 50 if score $success patchwreck.variables matches 1 store result storage patchwreck:storage variables.y float 1 run scoreboard players get @s patchwreck.void_anchor.y
execute if score @s patchwreck.void_return matches 50 if score $success patchwreck.variables matches 1 store result storage patchwreck:storage variables.z float 1 run scoreboard players get @s patchwreck.void_anchor.z
execute if score @s patchwreck.void_return matches 50 if score $success patchwreck.variables matches 1 run function patchwreck:void/return/use_anchor with storage patchwreck:storage variables

# TODO: Add handling for the case where both tethers fail to create an anchor point

# Run final effects after player is returned so they are processed at the player's new location
execute if score @s patchwreck.void_return matches 51 run playsound minecraft:entity.player.teleport player @s ~ ~ ~ 100 0.5
execute if score @s patchwreck.void_return matches 51 run stopsound @s player minecraft:block.portal.ambient
execute if score @s patchwreck.void_return matches 51 run effect clear @s minecraft:darkness

# Damage non-creative mode players by 20% of their max health
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 store result score $damage patchwreck.variables run attribute @s generic.max_health get
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 run scoreboard players operation $damage patchwreck.variables *= 20 patchwreck.constants
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 run scoreboard players operation $damage patchwreck.variables /= 100 patchwreck.constants
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 store result storage patchwreck:storage variables.damage float 1 run scoreboard players get $damage patchwreck.variables
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 run function patchwreck:void/return/damage with storage patchwreck:storage variables

# Remove tag and reset timer if return sequence is complete
execute if score @s patchwreck.void_return matches 52 run tag @s remove patchwreck.void_return
execute if score @s patchwreck.void_return matches 52 run scoreboard players set @s patchwreck.void_return 0
