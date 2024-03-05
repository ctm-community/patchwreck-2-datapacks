#> matt97:hoverbot/tick

execute if entity @s[type=bee] at @s run function matt97:hoverbot/bee_branch

scoreboard players set m97_dummyPlayer m97_chain_count 0
scoreboard players operation m97_dummyPlayer m97_death_id = @s m97_chain_id
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=m97_hoverbot] if score @s m97_chain_id = m97_dummyPlayer m97_death_id run scoreboard players add m97_dummyPlayer m97_chain_count 1
scoreboard players operation @s m97_chain_count = m97_dummyPlayer m97_chain_count

execute at @s[scores={m97_chain_count=1}] run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 1 1
kill @s[scores={m97_chain_count=1}]

scoreboard players operation m97_dummyPlayer m97_current_id = @s m97_chain_id

execute store result score m97_dummyPlayer m97_expected_health run data get entity @s Health

execute if score @s m97_expected_health > m97_dummyPlayer m97_expected_health run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1
execute if score @s m97_expected_health > m97_dummyPlayer m97_expected_health run execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_current_id run function matt97:equalize_health
execute if score @s m97_expected_health < m97_dummyPlayer m97_expected_health run execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_current_id run function matt97:equalize_health

execute at @s[scores={m97_expected_health=..0}] run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 1 1















