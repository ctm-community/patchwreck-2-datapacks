#> patchwreck:regions/tick

# Metropolis portal operations
execute in patchwreck:metropolis if entity @s[x=98,y=100,z=98,dx=5,dy=25,dz=5] run function patchwreck:regions/metropolis/portal/exit
execute in patchwreck:metropolis unless entity @s[x=98,y=100,z=98,dx=5,dy=25,dz=5] run scoreboard players set @s patchwreck.abduction 0
