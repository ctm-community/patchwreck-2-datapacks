#> safeliquids:nuclear_wasteland/irradiated
# Run this when a player takes damage from an irradiated creeper

effect give @s minecraft:darkness 2
effect give @s minecraft:poison 2 2
effect give @s minecraft:nausea 5 0

advancement revoke @s only safeliquids:nuclear_wasteland/take_damage_from_irradiated_creeper
