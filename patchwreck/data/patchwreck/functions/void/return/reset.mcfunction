#> patchwreck:void/return/reset
# Reset data used for void return

# BUG: The player can still trigger void return after respawning if they died due to an invalid tether location

tag @s remove patchwreck.used_void_tether
tag @s remove patchwreck.valid_void_tether
tag @s remove patchwreck.void_return
scoreboard players set @s patchwreck.void_return 0
