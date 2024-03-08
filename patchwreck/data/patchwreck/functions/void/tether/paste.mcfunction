#> patchwreck:void/tether/paste
# Paste a player's tether data into 

# Copy void tether
scoreboard players operation @s patchwreck.void_tether.x = $clipboard patchwreck.void_tether.x
scoreboard players operation @s patchwreck.void_tether.y = $clipboard patchwreck.void_tether.y
scoreboard players operation @s patchwreck.void_tether.z = $clipboard patchwreck.void_tether.z

# Copy backup void tether
scoreboard players operation @s patchwreck.void_tether_backup.x = $clipboard patchwreck.void_tether_backup.x
scoreboard players operation @s patchwreck.void_tether_backup.y = $clipboard patchwreck.void_tether_backup.y
scoreboard players operation @s patchwreck.void_tether_backup.z = $clipboard patchwreck.void_tether_backup.z

# Tag player for valid tether and backup tether
tag @s add patchwreck.valid_void_tether
