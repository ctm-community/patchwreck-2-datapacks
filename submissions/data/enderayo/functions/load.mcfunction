#> enderayo:load

# Initialize scoreboard objectives
scoreboard objectives add enderayo.ghastcharge dummy
scoreboard objectives add enderayo.ghastcd dummy
scoreboard objectives add enderayo.hyperdrift dummy
scoreboard objectives add enderayo.pos dummy
scoreboard objectives add enderayo.vampire dummy
scoreboard objectives add enderayo.demonomicon trigger
scoreboard objectives add enderayo.hunger dummy
scoreboard objectives add enderayo.shieldability used:shield
scoreboard objectives add enderayo.variables dummy

# Initialize scores
scoreboard players set $light_blue enderayo.hyperdrift 200
scoreboard players set $magenta enderayo.hyperdrift -1
scoreboard players add $cooldown enderayo.shieldability 0
scoreboard players add $cooldown enderayo.demonomicon 0
scoreboard players add $souls enderayo.demonomicon 0
scoreboard players add $item_slot enderayo.variables 0

# Initialize bossbars
# NOTE: Hyperdrift bossbar max set to 198 instead of 200 to eliminate dead space caused by 'refill' animation
bossbar add enderayo:hyperdrift [{"text":"Hyperdrift - Defense Mode", "color":"aqua"}]
bossbar set enderayo:hyperdrift name [{"text":"Hyperdrift - Defense Mode", "color":"aqua"}]
bossbar set enderayo:hyperdrift color blue
bossbar set enderayo:hyperdrift max 198

# Initialize schedule
function enderayo:items/alchemy_circle_animation
