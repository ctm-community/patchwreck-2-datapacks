# run this when a player hits a mob with the decay sword
# note that, this function is ran once per each mob hit, since the advancement triggers per mob!
# that is also why the xenon_lamp_decay tag is checked, to avoid applying decay to mobs multiple times.
# That tag is removed from all hostile mobs every tick.

execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_10=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:10s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_9=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:9s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_8=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:8s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_7=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:7s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_6=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:6s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_5=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:5s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_4=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:4s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_3=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:3s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_2=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:2s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob
execute if entity @s[advancements={safeliquids:neon_metropolis/hit_with_xenon_lamp={iframes_1=true}}] as @e[type=#safeliquids:hostile_mobs,distance=..6, tag=!xenon_lamp_decay,nbt={HurtTime:1s},sort=nearest,limit=1] at @s run function safeliquids:neon_metropolis/decay_mob

advancement revoke @s only safeliquids:neon_metropolis/hit_with_xenon_lamp
