#> patchwreck:regions/metropolis/particles/exit_portal/animate

scoreboard objectives add cw_particleplot dummy
scoreboard players add $test cw_particleplot 1
execute if score $test cw_particleplot matches 16.. run scoreboard players set $test cw_particleplot 0

execute if score $test cw_particleplot matches 0 run particle minecraft:sculk_charge 1 ~ ~16 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 0 run particle minecraft:shriek 0 ~ ~16 ~
execute if score $test cw_particleplot matches 1 run particle minecraft:sculk_charge 1 ~ ~15 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 1 run particle minecraft:shriek 0 ~ ~15 ~
execute if score $test cw_particleplot matches 2 run particle minecraft:sculk_charge 1 ~ ~14 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 2 run particle minecraft:shriek 0 ~ ~14 ~
execute if score $test cw_particleplot matches 3 run particle minecraft:sculk_charge 1 ~ ~13 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 3 run particle minecraft:shriek 0 ~ ~13 ~
execute if score $test cw_particleplot matches 4 run particle minecraft:sculk_charge 1 ~ ~12 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 4 run particle minecraft:shriek 0 ~ ~12 ~
execute if score $test cw_particleplot matches 5 run particle minecraft:sculk_charge 1 ~ ~11 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 5 run particle minecraft:shriek 0 ~ ~11 ~
execute if score $test cw_particleplot matches 6 run particle minecraft:sculk_charge 1 ~ ~10 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 6 run particle minecraft:shriek 0 ~ ~10 ~
execute if score $test cw_particleplot matches 7 run particle minecraft:sculk_charge 1 ~ ~9 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 7 run particle minecraft:shriek 0 ~ ~9 ~
execute if score $test cw_particleplot matches 8 run particle minecraft:sculk_charge 1 ~ ~8 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 8 run particle minecraft:shriek 0 ~ ~8 ~
execute if score $test cw_particleplot matches 9 run particle minecraft:sculk_charge 1 ~ ~7 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 9 run particle minecraft:shriek 0 ~ ~7 ~
execute if score $test cw_particleplot matches 10 run particle minecraft:sculk_charge 1 ~ ~6 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 10 run particle minecraft:shriek 0 ~ ~6 ~
execute if score $test cw_particleplot matches 11 run particle minecraft:sculk_charge 1 ~ ~5 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 11 run particle minecraft:shriek 0 ~ ~5 ~
execute if score $test cw_particleplot matches 12 run particle minecraft:sculk_charge 1 ~ ~4 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 12 run particle minecraft:shriek 0 ~ ~4 ~
execute if score $test cw_particleplot matches 13 run particle minecraft:sculk_charge 1 ~ ~3 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 13 run particle minecraft:shriek 0 ~ ~3 ~
execute if score $test cw_particleplot matches 14 run particle minecraft:sculk_charge 1 ~ ~2 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 14 run particle minecraft:shriek 0 ~ ~2 ~
execute if score $test cw_particleplot matches 15 run particle minecraft:sculk_charge 1 ~ ~1 ~ 0.1 0.5 0.1 0 2
execute if score $test cw_particleplot matches 15 run particle minecraft:shriek 0 ~ ~1 ~

execute if score $test cw_particleplot matches 0 run particle minecraft:sculk_charge 0 ~ ~0.5 ~ 1 0.5 1 0 10
execute if score $test cw_particleplot matches 5 run particle minecraft:sculk_charge 0 ~ ~0.5 ~ 1 0.5 1 0 10
execute if score $test cw_particleplot matches 15 run particle minecraft:sculk_charge 0 ~ ~0.5 ~ 1 0.5 1 0 10
