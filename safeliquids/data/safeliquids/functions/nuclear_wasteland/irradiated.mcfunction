#> safeliquids:nuclear_wasteland/irradiated
# Run this when a player takes damage from an irradiated creeper

effect give @s minecraft:darkness 2
effect give @s minecraft:wither 2 1

advancement revoke @s only safeliquids:nuclear_wasteland/take_damage_from_irradiated_creeper
