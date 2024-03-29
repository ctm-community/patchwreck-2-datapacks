#Runs when the datapack loads, sets up any necessary scoreboards and teams

#Return if this has been loaded
execute if score setup spawner_tweaker matches 2.. run return 1

#Scoreboards
scoreboard objectives add temp dummy
scoreboard objectives add spawner_tweaker dummy
scoreboard objectives add spawner_tweaker_slot dummy
scoreboard objectives add spawner_tweaker_slot_prev dummy

#Scores
scoreboard players set setup spawner_tweaker 2

#Teams
team add spawner_tweaker_green {"translate":"score.spawner_tweaker_green.name.1","color":"green","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_red {"translate":"score.spawner_tweaker_red.name.1","color":"red","bold":false,"italic":false,"underlined":false}
team modify spawner_tweaker_green color green
team modify spawner_tweaker_red color red