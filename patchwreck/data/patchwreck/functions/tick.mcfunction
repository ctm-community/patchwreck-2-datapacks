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

#Cooldowns, flags, etc.
execute if score $cooldown enderayo.shieldability matches 1.. run scoreboard players remove $cooldown enderayo.shieldability 1
execute if score $cooldown enderayo.shieldability matches 1 run title @a[tag=enderayo.shield_has] actionbar {"text":"Blue-Eyes White Dragon Ability Ready!","color":"#0FB7FF","bold":false,"italic":false}

# OLD Branch player ticking events, moved to> patchwreck:player/player_tick

execute as @a run function enderayo:tick/player
#execute as @a run function manoloesmanolo:tick/player
#execute as @a run function qqruzka:tick/player

