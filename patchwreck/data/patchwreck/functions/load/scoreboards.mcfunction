#> patchwreck:load/scoreboards
# Initialize Patchwreck II scoreboards

# Create Patchwreck scoreboards
scoreboard objectives add patchwreck.variables dummy
scoreboard objectives add patchwreck.events dummy

# Initialize scores
execute unless score $item_count patchwreck.variables matches 1.. run scoreboard players set $item_count patchwreck.variables 1
