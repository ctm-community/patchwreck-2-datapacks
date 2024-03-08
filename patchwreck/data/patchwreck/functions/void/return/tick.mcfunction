#> patchwreck:void/return/tick
# Ticking event for players in the middle of void return

scoreboard players add @s patchwreck.void_return 1

# Ticking effects
execute at @s run particle minecraft:portal ~ ~ ~ 1.0 1.0 1.0 0 20

# Start running void return events
execute if score @s patchwreck.void_return matches 1 run effect give @s minecraft:darkness 4 0 true
execute if score @s patchwreck.void_return matches 1 run effect give @s minecraft:levitation 3 0 true
execute if score @s patchwreck.void_return matches 1 run playsound minecraft:block.portal.ambient player @s ~ ~ ~ 100 2 1

# Use tether to create anchor point for returning player
execute if score @s patchwreck.void_return matches 50 if function patchwreck:void/anchor/create run function patchwreck:void/anchor/teleport with storage patchwreck:void void_anchor

# Run final effects after using tether
execute if score @s patchwreck.void_return matches 51 run playsound minecraft:entity.player.teleport player @s[tag=patchwreck.used_void_tether] ~ ~ ~ 100 0.5
execute if score @s patchwreck.void_return matches 51 run playsound minecraft:entity.ender_eye.death player @s[tag=!patchwreck.used_void_tether] ~ ~ ~ 100 0.1
execute if score @s patchwreck.void_return matches 51 run playsound minecraft:block.glass.break player @s[tag=!patchwreck.used_void_tether] ~ ~ ~ 100 0.1
execute if score @s patchwreck.void_return matches 51 run stopsound @s player minecraft:block.portal.ambient
execute if score @s patchwreck.void_return matches 51 run effect clear @s minecraft:darkness

# Damage non-creative mode players by 20% of their max health
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 store result score $damage patchwreck.variables run attribute @s generic.max_health get
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 run scoreboard players operation $damage patchwreck.variables *= 20 patchwreck.constants
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 run scoreboard players operation $damage patchwreck.variables /= 100 patchwreck.constants
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 store result storage patchwreck:storage variables.damage float 1 run scoreboard players get $damage patchwreck.variables
execute if score @s[gamemode=!creative] patchwreck.void_return matches 51 run function patchwreck:void/return/damage with storage patchwreck:storage variables

# Reset void return data if return sequence is complete
execute if score @s patchwreck.void_return matches 52 run function patchwreck:void/return/reset
