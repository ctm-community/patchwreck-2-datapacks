#> matt97:batswarm/bat

scoreboard players add m97_dummyPlayer m97_swarm_count 1

# Store my coordinates
function matt97:batswarm/bat_storage

function matt97:batswarm/math1 with storage matt97:batswarm.bat
function matt97:batswarm/math2 with storage matt97:batswarm.bat

execute at @s positioned ~-0.75 ~-0.75 ~-0.75 run damage @a[dx=0.5,dy=0.5,dz=0.5,limit=1] 2.6 minecraft:mob_attack by @s
