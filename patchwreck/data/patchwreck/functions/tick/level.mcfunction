#> patchwreck:tick/level
# Handle all Patchwreck ticking events

# Run level tick events for sub-packs
function enderayo:main
function m97:tick

##Mob ticking
execute as @e[type=item,tag=!bloodbeet_check] at @s run function manoloesmanolo:tick/entity


##Mob ticking end


# Branch ticking entity operations, unoptimized
execute as @e run function patchwreck:tick/entity
