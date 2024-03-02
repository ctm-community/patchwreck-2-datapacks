#> matt97:tick

execute as @e[tag=m97_create,sort=random,limit=1] at @s run function matt97:chain_creation

execute if score m97_dummyPlayer m97_blink_timer matches ..0 run scoreboard players set m97_dummyPlayer m97_blink_timer 40
scoreboard players remove m97_dummyPlayer m97_blink_timer 1
