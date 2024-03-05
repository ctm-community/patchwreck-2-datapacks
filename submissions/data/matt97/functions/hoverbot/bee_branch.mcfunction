#Branch for bee on hoverbot

execute at @s anchored eyes run particle minecraft:large_smoke ~ ~0.5 ~ 0 -1 0 0.2 0 force
particle minecraft:flame ~-0.05 ~0.5 ~-0.05 0 -1 0 0.2 0 force
particle minecraft:flame ~-0.05 ~0.5 ~0.05 0 -1 0 0.2 0 force
particle minecraft:flame ~0.05 ~0.5 ~-0.05 0 -1 0 0.2 0 force
particle minecraft:flame ~0.05 ~0.5 ~0.05 0 -1 0 0.2 0 force

scoreboard players set @s[scores={m97_sound_timer=..0}] m97_sound_timer 5
execute at @s[scores={m97_sound_timer=1}] run playsound minecraft:entity.cat.hiss hostile @a ~ ~ ~ .15 0.5
scoreboard players remove @s m97_sound_timer 1

# Prevents Hoverbot from hitting head against ceiling. Delete to reduce lag.
execute unless block ~-0.1 ~2 ~-0.1 #matt97:no_hitbox run data merge entity @s {Motion: [0.0d, -0.05d, 0.0d]}
execute unless block ~-0.1 ~1.1 ~-0.1 #matt97:no_hitbox run data merge entity @s {Motion: [0.0d, -0.05d, 0.0d]}

execute unless block ~0.1 ~2 ~-0.1 #matt97:no_hitbox run data merge entity @s {Motion: [0.0d, -0.05d, 0.0d]}
execute unless block ~0.1 ~1.1 ~-0.1 #matt97:no_hitbox run data merge entity @s {Motion: [0.0d, -0.05d, 0.0d]}

execute unless block ~-0.1 ~2 ~0.1 #matt97:no_hitbox run data merge entity @s {Motion: [0.0d, -0.05d, 0.0d]}
execute unless block ~-0.1 ~1.1 ~0.1 #matt97:no_hitbox run data merge entity @s {Motion: [0.0d, -0.05d, 0.0d]}

execute unless block ~0.1 ~2 ~0.1 #matt97:no_hitbox run data merge entity @s {Motion: [0.0d, -0.05d, 0.0d]}
execute unless block ~0.1 ~1.1 ~0.1 #matt97:no_hitbox run data merge entity @s {Motion: [0.0d, -0.05d, 0.0d]}