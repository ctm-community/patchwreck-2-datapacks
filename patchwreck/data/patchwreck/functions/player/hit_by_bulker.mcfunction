#Happens when the special shulkers hit you

effect clear @s levitation
effect give @s minecraft:poison 3 0
advancement revoke @s only patchwreck:utility/shulker_hits_you
advancement revoke @s only patchwreck:utility/bullet_hits_you

#Base damage 7.3%, 5 damage makes it 19.8%
damage @s 5 game:scale_no_i_frames_knockback by @e[type=sniffer,limit=1,sort=nearest]
