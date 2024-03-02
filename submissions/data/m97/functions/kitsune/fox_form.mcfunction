

execute store result score m97_dummyPlayer m97_expected_health run data get entity @s Health

summon fox ~ ~ ~ {CustomNameVisible:0b,Health:20f,Type:"red",Tags:["m97_kitsune"],CustomName:'{"text":"Druid"}',Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.4}]}

particle minecraft:cloud ~ ~1.2 ~ 0.3 0.3 0.3 0.1 10 force
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1


execute at @s as @e[type=fox,sort=nearest,limit=1] run function m97:equalize_health
execute at @s facing ^ ^ ^1 run teleport @e[type=fox,sort=nearest,limit=1] ~ ~ ~ ~ ~

teleport @s ~ ~-9999999 ~

kill @s


