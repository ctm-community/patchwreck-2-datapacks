#> patchwreck:tick
# Handle all Patchwreck ticking events

# Moved player ticking to central function (these are optimized or optimized enough)
# Generally, it is best to do player ticking before entities
execute as @a at @s run function patchwreck:player/player_tick

# Run generic tick events for sub-packs
function matt97:tick

# Branch entity ticking events
execute as @e[type=!minecraft:player] run function enderayo:tick/entity
execute as @e run function matt97:tick/entity
execute as @e[type=minecraft:item,tag=!bloodbeet.checked] run function manoloesmanolo:tick/entity
execute as @e run function safeliquids:tick/entity
execute as @e[type=!minecraft:player] run function qqruzka:tick/entity

# Branch player ticking events
# Commented out lines have been moved to> patchwreck:player/player_tick

execute as @a run function enderayo:tick/player
#execute as @a run function manoloesmanolo:tick/player
#execute as @a run function qqruzka:tick/player

