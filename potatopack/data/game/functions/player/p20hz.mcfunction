#This function is run on all players at the hz in the filename
##v Spawn in detection v
##execute as @a[x=-8,z=-8,y=255,dx=32,dy=1,dz=32] run function game:spawnin


#Item branch
execute as @s[advancements={game:invchange=true}] run function game:player/invchange
advancement revoke @s[advancements={game:invchange=true}] only game:invchange

#Fix goofy ah ambience bug
execute if score @s ambience_death matches 1.. run stopsound @s ambient
execute if score @s ambience_death matches 1.. run scoreboard players set @s ambience_death 0