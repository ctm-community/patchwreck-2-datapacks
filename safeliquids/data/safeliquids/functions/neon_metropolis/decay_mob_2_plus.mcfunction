#> safeliquids:neon_metropolis/decay_mob_2_plus
# Run this as a mob who is to be decayed with level 2 or higher 

# I could make the particles spawn in different shapes depending on how big the mob is
# but that would be too much work (and probably unnecessary).
execute anchored eyes run particle minecraft:dust 0 0 0 6 ^ ^ ^ 0.25 0.25 0.25 0 2
execute anchored eyes run particle minecraft:dust 0 0 0 6 ^ ^-0.2 ^ 0.25 0.25 0.25 0 2
effect give @s minecraft:wither 5 2
