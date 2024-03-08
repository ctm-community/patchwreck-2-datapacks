#> patchwreck:void/tether/copy
# Copy a player's tether data into 

# Exit if player does not have valid tethers
execute if entity @s[tag=!patchwreck.valid_void_tether] run return fail

# Copy void tether
scoreboard players operation $clipboard patchwreck.void_tether.x = @s patchwreck.void_tether.x
scoreboard players operation $clipboard patchwreck.void_tether.y = @s patchwreck.void_tether.y
scoreboard players operation $clipboard patchwreck.void_tether.z = @s patchwreck.void_tether.z

# Copy backup void tether
scoreboard players operation $clipboard patchwreck.void_tether_backup.x = @s patchwreck.void_tether_backup.x
scoreboard players operation $clipboard patchwreck.void_tether_backup.y = @s patchwreck.void_tether_backup.y
scoreboard players operation $clipboard patchwreck.void_tether_backup.z = @s patchwreck.void_tether_backup.z
