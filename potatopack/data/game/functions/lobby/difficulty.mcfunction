#Lobby setting when difficulty is hit

#general stuff
execute at 3023b61d-3aa7-44e5-b0d7-b88e01c4dbff run particle dust 1.000 0.208 0.122 1 ~ ~1 ~ 0.4 1 0.4 1 40 normal

#alternates 0-3
scoreboard players add difficulty game 1
execute if score difficulty game matches 3.. run scoreboard players set difficulty game 0
tellraw @a [{"translate":"wtem.space","color":"gray","italic":false},{"translate":"wtem.space","color":"green"}]


#If 0
execute if score difficulty game matches 0 run playsound minecraft:entity.cat.ambient ambient @a ~ ~ ~ 1 1
execute if score difficulty game matches 0 run tellraw @a [{"translate":"game.functions.lobby.difficulty.3","color":"gray","italic":false},{"translate":"game.functions.lobby.difficulty.4","color":"green"}]
execute if score difficulty game matches 0 run tellraw @a [{"translate":"wtem.space","color":"gray","italic":false},{"translate":"game.functions.lobby.difficulty.6","color":"gray","italic":false}]
execute if score difficulty game matches 0 run difficulty normal
execute if score difficulty game matches 0 in patchwreck:gothic run difficulty normal
execute if score difficulty game matches 0 in patchwreck:tomb run difficulty normal
execute if score difficulty game matches 0 in patchwreck:metropolis run difficulty normal
execute if score difficulty game matches 0 in patchwreck:grove run difficulty normal
execute if score difficulty game matches 0 in patchwreck:wasteland run difficulty normal

data merge entity d452d5a1-6012-4398-badb-cfe703efae74 {text:'[{"translate":"entity.text_display.5.text.1","color":"gray"},{"translate":"game.functions.lobby.difficulty.8","color":"green"}]'}

#If 1
execute if score difficulty game matches 1 run playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 1 1
execute if score difficulty game matches 1 run tellraw @a [{"translate":"game.functions.lobby.difficulty.3","color":"gray","italic":false},{"translate":"game.functions.lobby.difficulty.10","color":"yellow"}]
execute if score difficulty game matches 1 run tellraw @a [{"translate":"wtem.space","color":"gray","italic":false},{"translate":"game.functions.lobby.difficulty.12","color":"gray","italic":false}]
execute if score difficulty game matches 1 run difficulty normal
execute if score difficulty game matches 1 run data merge entity d452d5a1-6012-4398-badb-cfe703efae74 {text:'[{"translate":"entity.text_display.5.text.1","color":"gray"},{"translate":"entity.text_display.5.text.2","color":"yellow"}]'}
execute if score difficulty game matches 1 in patchwreck:gothic run difficulty normal
execute if score difficulty game matches 1 in patchwreck:tomb run difficulty normal
execute if score difficulty game matches 1 in patchwreck:metropolis run difficulty normal
execute if score difficulty game matches 1 in patchwreck:grove run difficulty normal
execute if score difficulty game matches 1 in patchwreck:wasteland run difficulty normal

#If 2..

execute if score difficulty game matches 2 run playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 1 1
execute if score difficulty game matches 2 run tellraw @a [{"translate":"game.functions.lobby.difficulty.3","color":"gray","italic":false},{"translate":"game.functions.lobby.difficulty.16","color":"red"}]
execute if score difficulty game matches 2 run tellraw @a [{"translate":"wtem.space","color":"gray","italic":false},{"translate":"game.functions.lobby.difficulty.18","color":"gray","italic":false}]
execute if score difficulty game matches 2 run difficulty hard
execute if score difficulty game matches 2 run data merge entity d452d5a1-6012-4398-badb-cfe703efae74 {text:'[{"translate":"entity.text_display.5.text.1","color":"gray"},{"translate":"game.functions.lobby.difficulty.20","color":"red"}]'}
execute if score difficulty game matches 2 in patchwreck:gothic run difficulty hard
execute if score difficulty game matches 2 in patchwreck:tomb run difficulty hard
execute if score difficulty game matches 2 in patchwreck:metropolis run difficulty hard
execute if score difficulty game matches 2 in patchwreck:grove run difficulty hard
execute if score difficulty game matches 2 in patchwreck:wasteland run difficulty hard

#If 3...

execute if score difficulty game matches 3 run playsound minecraft:entity.sheep.ambient ambient @a ~ ~ ~ 1 1
execute if score difficulty game matches 3 run tellraw @a [{"translate":"game.functions.lobby.difficulty.3","color":"gray","italic":false},{"translate":"game.functions.lobby.difficulty.22","color":"dark_green"}]
execute if score difficulty game matches 3 run data merge block ~ ~ ~ {Text3:'{"translate":"game.functions.lobby.difficulty.23","color":"dark_green"}'}

#Appy modifiers
function game:lobby/apply_difficulty

advancement revoke @a only game:lobby/difficulty
advancement revoke @a only game:lobby/difficulty2