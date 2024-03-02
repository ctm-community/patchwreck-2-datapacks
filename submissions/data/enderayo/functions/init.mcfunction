# Reload Message
tellraw @a {"text":"[Enderayo's pack loaded]","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Hopefully 99.999% Bugfree","color":"gray","italic":true}]}}

# Create Scoreboard
scoreboard objectives add enderayo.ghastcharge dummy
scoreboard objectives add enderayo.ghastcd dummy
scoreboard objectives add enderayo.pos dummy
scoreboard objectives add enderayo.vampire dummy
scoreboard objectives add enderayo.demonomicon trigger
scoreboard objectives add enderayo.hunger dummy
scoreboard objectives add enderayo.shieldability used:shield

# Init Score
execute unless score .cd enderayo.shieldability matches 1.. run scoreboard players set .cd enderayo.shieldability 0
execute unless score .cd enderayo.demonomicon matches 1.. run scoreboard players set .cd enderayo.demonomicon 0
execute unless score .souls enderayo.demonomicon matches 1.. run scoreboard players set .souls enderayo.demonomicon 0

# Init Schedule
function enderayo:items/alchemy_circle_animation
function enderayo:items/hyperdrift_a