execute as @s run summon zombie ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Tags:["this"],CustomName:'{"text":"Vampire Spawn"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6029312}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2056890659,1769164774,-2126997019,-660087827],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTU2NTlmNzNiOWM5NTBlYjAwMWU0MGQzNDY1MWJjOTRkMzU2YjVhNTdiM2Y2ZjgxMTNmNWU5ODc2MTUzYzkyYyJ9fX0="}]}}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
execute as @s store result entity @e[tag=this,limit=1,sort=nearest] Health float 1.0 run data get entity @s Health 1.0

execute as @s at @s run playsound entity.zombie_villager.cure hostile @a[distance=..7] ~ ~ ~ 1 0.6

execute as @s run tp @s ~ ~-1000 ~
tag @e[tag=this] remove this