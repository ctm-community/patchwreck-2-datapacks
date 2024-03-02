# Anti-Peacefull spawn buffer
kill @s[tag=enderayo.temp]

# Vampire ability
execute as @s[tag=enderayo.true] at @s run particle dust 0.722 0.000 0.000 0.8 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute as @s[tag=enderayo.true] run scoreboard players add @s enderayo.vampire 1
execute as @s[tag=enderayo.true,scores={enderayo.vampire=80..}] at @s run function enderayo:mobs/battransform

# Skele-tron
execute as @s[tag=enderayo.tron] at @s run function enderayo:mobs/trail

# Mutant Ghast ability
execute as @s[tag=mutantghast] at @s unless score @s enderayo.ghastcharge matches 175.. unless entity @a[distance=..16] run scoreboard players add @s enderayo.ghastcharge 1
execute as @s[tag=mutantghast,scores={enderayo.ghastcharge=25..}] unless score @s enderayo.ghastcd matches 1.. at @s if entity @a[distance=8..16,gamemode=!creative,gamemode=!spectator] run function enderayo:mobs/mutantghast
execute as @s[tag=mutantghast] unless score @s enderayo.ghastcd matches ..0 run scoreboard players remove @s enderayo.ghastcd 1

# Bee Battlement
execute as @s[type=bee,tag=enderayo.angry] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @s[type=bee,tag=enderayo.angry,nbt={HasStung:1b}] run kill @s
execute as @s[tag=enderayo.battlement] at @s unless entity @e[type=sniffer,distance=..3] run kill @s

# Curse of the Pharaoh
execute as @s[type=interaction,tag=enderayo.curse,nbt={attack:{}}] at @s run playsound entity.skeleton_horse.death hostile @a[distance=..32] ~ ~ ~ 0.8 0.7
execute as @s[type=interaction,tag=enderayo.curse,nbt={attack:{}}] at @s run kill @e[tag=enderayo.curse,limit=2,sort=nearest]
execute as @s[type=interaction,tag=enderayo.curse] at @s run particle soul ~ ~ ~ 0.25 0.25 0.25 0.01 3 force @a[distance=..32]
execute as @s[type=interaction,tag=enderayo.curse] at @s run particle falling_dust sand ~ ~ ~ 1.2 1.2 1.2 0.001 5 normal @a[distance=..32]

# Pixie Bucket
execute as @s[type=axolotl,tag=enderayo.pixie] at @s run function enderayo:items/pixie