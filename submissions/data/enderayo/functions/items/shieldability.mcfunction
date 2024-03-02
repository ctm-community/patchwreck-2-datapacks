execute as @s rotated ~90 ~ positioned ^7 ^ ^ run summon marker ~ ~ ~ {UUID: [I; 0, 83183, 0, 45], Tags: ["enderayo.shieldability"]}

execute as @e[type=!player,distance=..7] if entity @e[type=marker,tag=enderayo.shieldability,distance=..7] run damage @s 10 dragon_breath by @p[scores={enderayo.shieldability=1..}]

playsound entity.ender_dragon.growl player @a[distance=..32] ~ ~ ~ 1 0.9
execute as @s at @s anchored eyes run particle soul_fire_flame ^ ^ ^0.5 2 0.2 2 0.2 100 force

execute as @s rotated ~45 ~ positioned ^1 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~45 ~ positioned ^2 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~45 ~ positioned ^3 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~45 ~ positioned ^4 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~45 ~ positioned ^5 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~45 ~ positioned ^6 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~45 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal

execute as @s rotated ~135 ~ positioned ^1 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~135 ~ positioned ^2 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~135 ~ positioned ^3 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~135 ~ positioned ^4 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~135 ~ positioned ^5 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~135 ~ positioned ^6 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~135 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal

execute as @s rotated ~50 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~55 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~60 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~75 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~80 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~85 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~90 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~95 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~100 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~105 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~110 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~115 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~120 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~125 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal
execute as @s rotated ~130 ~ positioned ^7 ^ ^ run particle electric_spark ~ ~0.1 ~ 1 0.1 1 0.001 20 normal

kill 00000000-0001-44ef-0000-00000000002d
scoreboard players set $cooldown enderayo.shieldability 1200
