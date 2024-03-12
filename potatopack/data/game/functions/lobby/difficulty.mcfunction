#Lobby setting when difficulty is hit

#general stuff
execute at 3023b61d-3aa7-44e5-b0d7-b88e01c4dbff run particle dust 1.000 0.208 0.122 1 ~ ~1 ~ 0.4 1 0.4 1 40 normal

#alternates 0-3
scoreboard players add difficulty game 1
execute if score difficulty game matches 3.. run scoreboard players set difficulty game 0
tellraw @a [{"text":" ","color":"gray","italic":false},{"text":" ","color":"green"}]


#If 0
execute if score difficulty game matches 0 run playsound minecraft:entity.cat.ambient ambient @a ~ ~ ~ 1 1
execute if score difficulty game matches 0 run tellraw @a [{"text":"Difficulty set to ","color":"gray","italic":false},{"text":"casual","color":"green"}]
execute if score difficulty game matches 0 run tellraw @a [{"text":" ","color":"gray","italic":false},{"text":"+50% health & +10% armor","color":"gray","italic":false}]
execute if score difficulty game matches 0 run difficulty normal
execute if score difficulty game matches 0 in patchwreck:gothic run difficulty normal
execute if score difficulty game matches 0 in patchwreck:tomb run difficulty normal
execute if score difficulty game matches 0 in patchwreck:metropolis run difficulty normal
execute if score difficulty game matches 0 in patchwreck:grove run difficulty normal
execute if score difficulty game matches 0 in patchwreck:wasteland run difficulty normal

data merge entity d452d5a1-6012-4398-badb-cfe703efae74 {text:'[{"text":"Difficulty:\\n","color":"gray"},{"text":"Casual\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"green"}]'}

#If 1
execute if score difficulty game matches 1 run playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 1 1
execute if score difficulty game matches 1 run tellraw @a [{"text":"Difficulty set to ","color":"gray","italic":false},{"text":"normal","color":"yellow"}]
execute if score difficulty game matches 1 run tellraw @a [{"text":" ","color":"gray","italic":false},{"text":" Intended experience","color":"gray","italic":false}]
execute if score difficulty game matches 1 run difficulty normal
execute if score difficulty game matches 1 run data merge entity d452d5a1-6012-4398-badb-cfe703efae74 {text:'[{"text":"Difficulty:\\n","color":"gray"},{"text":"Normal\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"yellow"}]'}
execute if score difficulty game matches 1 in patchwreck:gothic run difficulty normal
execute if score difficulty game matches 1 in patchwreck:tomb run difficulty normal
execute if score difficulty game matches 1 in patchwreck:metropolis run difficulty normal
execute if score difficulty game matches 1 in patchwreck:grove run difficulty normal
execute if score difficulty game matches 1 in patchwreck:wasteland run difficulty normal

#If 2..

execute if score difficulty game matches 2 run playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 1 1
execute if score difficulty game matches 2 run tellraw @a [{"text":"Difficulty set to ","color":"gray","italic":false},{"text":"challenging","color":"red"}]
execute if score difficulty game matches 2 run tellraw @a [{"text":" ","color":"gray","italic":false},{"text":"Up to +50% mob damage, -25% damage dealt","color":"gray","italic":false}]
execute if score difficulty game matches 2 run difficulty hard
execute if score difficulty game matches 2 run data merge entity d452d5a1-6012-4398-badb-cfe703efae74 {text:'[{"text":"Difficulty:\\n","color":"gray"},{"text":"Challenging\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"red"}]'}
execute if score difficulty game matches 2 in patchwreck:gothic run difficulty hard
execute if score difficulty game matches 2 in patchwreck:tomb run difficulty hard
execute if score difficulty game matches 2 in patchwreck:metropolis run difficulty hard
execute if score difficulty game matches 2 in patchwreck:grove run difficulty hard
execute if score difficulty game matches 2 in patchwreck:wasteland run difficulty hard

#If 3...

execute if score difficulty game matches 3 run playsound minecraft:entity.sheep.ambient ambient @a ~ ~ ~ 1 1
execute if score difficulty game matches 3 run tellraw @a [{"text":"Difficulty set to ","color":"gray","italic":false},{"text":"none (peaceful)","color":"dark_green"}]
execute if score difficulty game matches 3 run data merge block ~ ~ ~ {Text3:'{"text":"None","color":"dark_green"}'}

#Appy modifiers
function game:lobby/apply_difficulty

advancement revoke @a only game:lobby/difficulty
advancement revoke @a only game:lobby/difficulty2