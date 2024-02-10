# run this as the mob being decayed

tag @s add xenon_lamp_decay

# according to [the wiki](https://minecraft.wiki/w/Wither_(effect)#cite_note-immunity-1) wither levels 4 and up
# cause the same damage as level 3.

execute if predicate safeliquids:neon_metropolis/wither_2_or_higher run particle dust 0 0 0 6 ~ ~1 ~ 0.25 0.125 0.25 0 4
execute if predicate safeliquids:neon_metropolis/wither_2_or_higher run return run effect give @s wither 5 2

execute if predicate safeliquids:neon_metropolis/wither_1 run return run effect give @s wither 5 1

effect give @s wither 5 0
