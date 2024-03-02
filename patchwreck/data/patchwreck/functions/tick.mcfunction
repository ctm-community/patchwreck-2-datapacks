#> patchwreck:tick
# Handle all Patchwreck ticking events

# Run level tick events for sub-packs
function enderayo:main
function m97:tick

# Branch entity ticking events
execute as @e[type=minecraft:item,tag=!bloodbeet.checked] run function manoloesmanolo:tick/entity
execute as @e run function safeliquids:tick

# Branch player ticking events
execute as @a run function manoloesmanolo:tick/player
