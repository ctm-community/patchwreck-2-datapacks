#> patchwreck:void/tether/setpoint
# Use macro to set a player's tether. This function assumes that the provided setpoint is valid.

# Tether player to this position
$scoreboard players set @s patchwreck.void_tether.x $(x)
$scoreboard players set @s patchwreck.void_tether.y $(y)
$scoreboard players set @s patchwreck.void_tether.z $(z)

# Create backup tether if additional conditions are true
$scoreboard players set @s patchwreck.void_tether_backup.x $(x)
$scoreboard players set @s patchwreck.void_tether_backup.y $(y)
$scoreboard players set @s patchwreck.void_tether_backup.z $(z)

# Tag player if they have a valid tether and backup tether
tag @s add patchwreck.valid_void_tether
