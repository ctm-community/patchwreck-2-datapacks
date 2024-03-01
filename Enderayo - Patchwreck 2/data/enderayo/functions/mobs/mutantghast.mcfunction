# summon the temporary entity
execute as @s at @s facing entity @p feet run summon marker ^ ^ ^1 {Tags:["enderayo.direction"]}

# get the coordinates of the player and the entity
execute store result score #playerX enderayo.pos run data get entity @s Pos[0] 1000
execute store result score #playerY enderayo.pos run data get entity @s Pos[1] 1000
execute store result score #playerZ enderayo.pos run data get entity @s Pos[2] 1000
execute store result score #targetX enderayo.pos as @e[type=marker,tag=enderayo.direction,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY enderayo.pos as @e[type=marker,tag=enderayo.direction,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ enderayo.pos as @e[type=marker,tag=enderayo.direction,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX enderayo.pos -= #playerX enderayo.pos
scoreboard players operation #targetY enderayo.pos -= #playerY enderayo.pos
scoreboard players operation #targetZ enderayo.pos -= #playerZ enderayo.pos

# summon the projectile entity
execute as @s at @s facing entity @p feet run summon fireball ^ ^ ^2 {Tags:["enderayo.projectile"],Invulnerable:1b,ExplosionPower:1b}

# sound and particles
execute as @s at @s run particle falling_dripstone_lava ^ ^ ^1.5 2 4 2 1 100 normal
execute as @s at @s run playsound minecraft:entity.ender_dragon.shoot hostile @a[distance=..30] ~ ~ ~ 7 0.6

# apply motion to projectile
execute store result entity @e[type=fireball,tag=enderayo.projectile,limit=1] power[0] double 0.001 run scoreboard players get #targetX enderayo.pos
execute store result entity @e[type=fireball,tag=enderayo.projectile,limit=1] power[1] double 0.001 run scoreboard players get #targetY enderayo.pos
execute store result entity @e[type=fireball,tag=enderayo.projectile,limit=1] power[2] double 0.001 run scoreboard players get #targetZ enderayo.pos

# clean up
tag @e[tag=enderayo.projectile] remove enderayo.projectile
kill @e[tag=enderayo.direction]

scoreboard players remove @s enderayo.ghastcharge 25
scoreboard players set @s enderayo.ghastcd 7