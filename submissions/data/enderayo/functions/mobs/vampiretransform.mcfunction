execute as @s[tag=enderayo.transform] at @s run summon bat ~ ~ ~ {Tags:["enderayo.true","this"],Attributes:[{Name:"generic.max_health",Base:20}]}
execute as @s[tag=enderayo.transform] at @s run summon bat ~ ~ ~ {Tags:["m97_swarm"],Health:3f,Attributes:[{Name:"generic.max_health",Base:3}]}
execute as @s[tag=enderayo.transform] at @s run summon bat ~ ~ ~ {Tags:["m97_swarm"],Health:3f,Attributes:[{Name:"generic.max_health",Base:3}]}
execute as @s[tag=enderayo.transform] at @s run summon bat ~ ~ ~ {Tags:["m97_swarm"],Health:3f,Attributes:[{Name:"generic.max_health",Base:3}]}

execute as @s[tag=enderayo.transform] at @s run playsound entity.spider.hurt hostile @a[distance=..7] ~ ~ ~ 1 0.2 

execute as @s[tag=enderayo.transform] store result entity @e[tag=this,limit=1,sort=nearest] Health float 0.1 run data get entity @s Health 1.0
execute as @s[tag=enderayo.transform] run tp @s ~ ~-1000 ~
tag @e[tag=enderayo.true] remove this