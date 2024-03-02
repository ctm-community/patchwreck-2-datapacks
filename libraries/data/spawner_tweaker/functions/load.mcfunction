#Runs when the datapack loads, sets up any necessary scoreboards and teams

#Return if this has been loaded
execute if score setup spawner_tweaker matches 1.. run return 1

#Scoreboards
scoreboard objectives add temp dummy
scoreboard objectives add spawner_tweaker dummy

#Scores
scoreboard players set setup spawner_tweaker 1

#Teams
team add spawner_tweaker_green {"text":"Green","color":"green","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_red {"text":"Red","color":"red","bold":false,"italic":false,"underlined":false}
team modify spawner_tweaker_green color green
team modify spawner_tweaker_red color red