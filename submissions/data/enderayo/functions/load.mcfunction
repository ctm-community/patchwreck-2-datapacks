#> enderayo:load

# Initialize scoreboard objectives
scoreboard objectives add enderayo.ghastcharge dummy
scoreboard objectives add enderayo.ghastcd dummy
scoreboard objectives add enderayo.pos dummy
scoreboard objectives add enderayo.vampire dummy
scoreboard objectives add enderayo.demonomicon trigger
scoreboard objectives add enderayo.hunger dummy
scoreboard objectives add enderayo.shieldability used:shield
scoreboard objectives add enderayo.variables dummy

# Initialize scores
scoreboard players add $cooldown enderayo.shieldability 0
scoreboard players add $cooldown enderayo.demonomicon 0
scoreboard players add $souls enderayo.demonomicon 0
scoreboard players add $item_slot enderayo.variables 0

# Initialize schedule
function enderayo:items/alchemy_circle_animation
function enderayo:items/hyperdrift_a
