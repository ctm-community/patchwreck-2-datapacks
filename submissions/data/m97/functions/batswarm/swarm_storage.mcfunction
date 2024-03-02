


summon marker ^ ^1 ^0.4 {UUID:[I;-247325762,1375816113,-1974990415,-1875787867]}


data modify storage m97:batswarm.bat swarmXpos set value {}
data modify storage m97:batswarm.bat swarmYpos set value {}
data modify storage m97:batswarm.bat swarmZpos set value {}

data modify storage m97:batswarm.bat swarmXmotion set value {}
data modify storage m97:batswarm.bat swarmYmotion set value {}
data modify storage m97:batswarm.bat swarmZmotion set value {}


execute store result storage m97:batswarm.bat swarmXpos double 1 run data get entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Pos[0]
execute store result storage m97:batswarm.bat swarmYpos double 1 run data get entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Pos[1]
execute store result storage m97:batswarm.bat swarmZpos double 1 run data get entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Pos[2]

execute store result storage m97:batswarm.bat swarmXmotion double 1 run data get entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Motion[0]
execute store result storage m97:batswarm.bat swarmYmotion double 1 run data get entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Motion[1]
execute store result storage m97:batswarm.bat swarmZmotion double 1 run data get entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Motion[2]






kill f1421bbe-5201-49b1-8a48-09b19031bfa5