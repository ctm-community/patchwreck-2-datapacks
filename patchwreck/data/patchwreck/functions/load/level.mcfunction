#> patchwreck:load/level
# Handle all Patchwreck load events

# Create Patchwreck scoreboards
scoreboard objectives add patchwreck.init dummy

# Initialize Patchwreck scoreboard values
scoreboard players add $world patchwreck.init 0
