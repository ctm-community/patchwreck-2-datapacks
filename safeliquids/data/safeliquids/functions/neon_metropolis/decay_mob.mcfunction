# run this as the mob being decayed

tag @s add xenon_lamp_decay

# according to [the wiki](https://minecraft.wiki/w/Wither_(effect)#cite_note-immunity-1) wither levels 4 and up
# cause the same damage as level 3.

# note: there is a special effect for this case, hence the function
execute if predicate safeliquids:neon_metropolis/wither_2_or_higher run return run function safeliquids:neon_metropolis/decay_mob_2_plus
execute if predicate safeliquids:neon_metropolis/wither_1 run return run effect give @s wither 5 1
effect give @s wither 5 0
