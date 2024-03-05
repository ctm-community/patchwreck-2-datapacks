#> matt97:batswarm/bat

scoreboard players add m97_dummyPlayer m97_swarm_count 1

# Store my coordinates
function matt97:batswarm/bat_storage

function matt97:batswarm/math1 with storage matt97:batswarm.bat
function matt97:batswarm/math2 with storage matt97:batswarm.bat

execute at @s run damage @a[dx=0,dy=0,dz=0,limit=1] 3 minecraft:mob_attack by @s
