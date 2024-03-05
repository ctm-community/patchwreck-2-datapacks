#> patchwreck:tick
# Handle all Patchwreck ticking events

# Moved player ticking to central function (these are optimized or optimized enough)
# Generally, it is best to do player ticking before entities
execute as @a at @s run function patchwreck:player/tick

# Run generic tick events for sub-packs
function matt97:tick

# Branch entity ticking events
execute as @e run function matt97:tick/entity
execute as @e[type=minecraft:item,tag=!bloodbeet.checked] run function manoloesmanolo:tick/entity
execute as @e[type=!minecraft:player] run function enderayo:tick/entity
execute as @e[type=!minecraft:player] run function qqruzka:tick/entity

## ALL MOB TICKING BELOW
execute if score $remove_xenon_tag temp matches 1.. run tag @e[tag=xenon_lamp_decay] remove xenon_lamp_decay
execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=#minecraft:hasai,type=!player,distance=..5.5] add enderayo.incircle
execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=#minecraft:hasai,type=!player,distance=5.51..10] remove enderayo.incircle
## MOB TICKING END

# Cooldowns, flags, etc.
execute if score $cooldown enderayo.shieldability matches 1.. run scoreboard players remove $cooldown enderayo.shieldability 1
execute if score $cooldown enderayo.shieldability matches 1 run title @a[tag=enderayo.shield_has] actionbar {"text":"Blue-Eyes White Dragon Ability Ready!","color":"#0FB7FF","bold":false,"italic":false}
execute if score $cooldown enderayo.demonomicon matches 1.. run scoreboard players remove $cooldown enderayo.demonomicon 1
execute if score $cooldown enderayo.demonomicon matches 1 run title @a[tag=enderayo.demonomicon] actionbar {"text":"Demonomicon's ability is Ready!","color":"#A10000","bold":false,"italic":false}
scoreboard players set $remove_xenon_tag temp 0
