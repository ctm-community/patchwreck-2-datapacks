execute as @s[tag=enderayo.transform] at @s run summon bat ~ ~ ~ {Tags:["enderayo.true","this"],Attributes:[{Name:"generic.max_health",Base:20}]}
execute as @s[tag=enderayo.transform] at @s run summon bat ~ ~ ~ {Health:3f,active_effects:[{id:"minecraft:wither",amplifier:0b,duration:-1}],Attributes:[{Name:"generic.max_health",Base:3}]}
execute as @s[tag=enderayo.transform] at @s run summon bat ~ ~ ~ {Health:3f,active_effects:[{id:"minecraft:wither",amplifier:0b,duration:-1}],Attributes:[{Name:"generic.max_health",Base:3}]}
execute as @s[tag=enderayo.transform] at @s run summon bat ~ ~ ~ {Health:3f,active_effects:[{id:"minecraft:wither",amplifier:0b,duration:-1}],Attributes:[{Name:"generic.max_health",Base:3}]}

execute as @s[tag=enderayo.transform] at @s run playsound entity.spider.hurt hostile @a[distance=..7] ~ ~ ~ 1 0.2 

execute as @s[tag=enderayo.transform] store result entity @e[tag=this,limit=1,sort=nearest] Health float 1.0 run data get entity @s Health 1.0
execute as @s[tag=enderayo.transform] run tp @s ~ ~-1000 ~
tag @e[tag=enderayo.true] remove this