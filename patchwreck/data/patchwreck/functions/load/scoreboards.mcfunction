#> patchwreck:load/scoreboards
# Initialize Patchwreck II scoreboards

# Create Patchwreck scoreboards
scoreboard objectives add patchwreck.abduction dummy
scoreboard objectives add patchwreck.constants dummy
scoreboard objectives add patchwreck.checkpoint dummy
scoreboard objectives add patchwreck.creative dummy
scoreboard objectives add patchwreck.dead deathCount
scoreboard objectives add patchwreck.events dummy
scoreboard objectives add patchwreck.falling dummy
scoreboard objectives add patchwreck.motion.y dummy
scoreboard objectives add patchwreck.nearby dummy
scoreboard objectives add patchwreck.position.dy dummy
scoreboard objectives add patchwreck.timers dummy
scoreboard objectives add patchwreck.variables dummy
scoreboard objectives add patchwreck.void_guard dummy
scoreboard objectives add patchwreck.void_return dummy
scoreboard objectives add patchwreck.void_tether.x dummy
scoreboard objectives add patchwreck.void_tether.y dummy
scoreboard objectives add patchwreck.void_tether.z dummy
scoreboard objectives add patchwreck.void_tether_backup.x dummy
scoreboard objectives add patchwreck.void_tether_backup.y dummy
scoreboard objectives add patchwreck.void_tether_backup.z dummy

# Initialize scores
scoreboard players set 20 patchwreck.constants 20
scoreboard players set 40 patchwreck.constants 40
scoreboard players set 60 patchwreck.constants 60
scoreboard players set 80 patchwreck.constants 80
scoreboard players set 100 patchwreck.constants 100
scoreboard players add 5t patchwreck.timers 0
scoreboard players add $credits patchwreck.timers 0
scoreboard players add $credits_end patchwreck.timers 0
execute unless score $item_count patchwreck.variables matches 1.. run scoreboard players set $item_count patchwreck.variables 1
