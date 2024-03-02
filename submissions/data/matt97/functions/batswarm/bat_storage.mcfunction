#> matt97:batswarm/bat_storage

data modify storage matt97:batswarm.bat batXpos set value {}
data modify storage matt97:batswarm.bat batYpos set value {}
data modify storage matt97:batswarm.bat batZpos set value {}

data modify storage matt97:batswarm.bat batXmotion set value {}
data modify storage matt97:batswarm.bat batYmotion set value {}
data modify storage matt97:batswarm.bat batZmotion set value {}

execute store result storage matt97:batswarm.bat batXpos double 1 run data get entity @s Pos[0]
execute store result storage matt97:batswarm.bat batYpos double 1 run data get entity @s Pos[1]
execute store result storage matt97:batswarm.bat batZpos double 1 run data get entity @s Pos[2]

execute store result storage matt97:batswarm.bat batXmotion double 1 run data get entity @s Motion[0]
execute store result storage matt97:batswarm.bat batYmotion double 1 run data get entity @s Motion[1]
execute store result storage matt97:batswarm.bat batZmotion double 1 run data get entity @s Motion[2]
