#> patchwreck:load/scoreboards
# Initialize Patchwreck II scoreboards

# Create Patchwreck scoreboards
scoreboard objectives add patchwreck.events dummy
scoreboard objectives add patchwreck.falling dummy
scoreboard objectives add patchwreck.motion.y dummy
scoreboard objectives add patchwreck.variables dummy

# Initialize scores
execute unless score $item_count patchwreck.variables matches 1.. run scoreboard players set $item_count patchwreck.variables 1
