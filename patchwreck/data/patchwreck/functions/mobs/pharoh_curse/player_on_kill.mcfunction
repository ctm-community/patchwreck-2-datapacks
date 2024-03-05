#Happens when player kills a curse

execute as @e[distance=..10,type=interaction,tag=enderayo.curse,limit=1,sort=nearest] at @s run function patchwreck:mobs/pharoh_curse/kill
advancement revoke @s only patchwreck:kill_pharoh_curse