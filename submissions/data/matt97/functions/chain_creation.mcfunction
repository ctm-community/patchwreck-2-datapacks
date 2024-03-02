#> matt97:chain_creation

scoreboard players add m97_dummyPlayer m97_chain_id_number 1
execute if entity @s[tag=m97_hoverbot_create] run function matt97:hoverbot/creation
execute if entity @s[tag=m97_kitsune_create] run function matt97:kitsune/creation
execute if entity @s[tag=m97_antenna_create] run function matt97:antenna/creation
execute if entity @s[tag=m97_batswarm_create] run function matt97:batswarm/creation
