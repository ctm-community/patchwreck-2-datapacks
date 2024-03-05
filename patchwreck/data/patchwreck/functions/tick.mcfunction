#> patchwreck:tick
# Handle all Patchwreck ticking events

# Moved player ticking to central function (these are optimized or optimized enough)
# Generally, it is best to do player ticking before entities
execute as @a at @s run function patchwreck:player/tick

# Run generic tick events for sub-packs
function matt97:tick

# Branch entity ticking events
#execute as @e[type=!minecraft:player] run function enderayo:tick/entity
execute as @e run function matt97:tick/entity
#execute as @e run function safeliquids:tick/entity
#execute as @e[type=!minecraft:player] run function qqruzka:tick/entity

## ALL MOB TICKING BELOW
execute if score $remove_xenon_tag temp matches 1.. run tag @e[tag=xenon_lamp_decay] remove xenon_lamp_decay
execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=#minecraft:hasai,type=!player,distance=..5.5] add enderayo.incircle
execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=#minecraft:hasai,type=!player,distance=5.51..10] remove enderayo.incircle
kill @e[type=endermite,tag=enderayo.temp]
execute if score 10s gremloop matches 111 as @e[type=bee,tag=enderayo.angry] at @s unless entity @a[distance=..32] run kill @s
execute if score 5hz gremloop matches 2 as @e[type=bee,tag=enderayo.angry] at @s run function patchwreck:mobs/bee_battlement/bee_tick
execute if score 10hz gremloop matches 1 as @e[type=skeleton_horse,tag=enderayo.tron] at @s run function enderayo:mobs/trail
execute if score 10hz gremloop matches 1 as @e[type=interaction,tag=enderayo.curse] at @s run function patchwreck:mobs/pharoh_curse/tick
execute if score 10hz gremloop matches 0 as @e[type=bat,tag=enderayo.true] at @s run function patchwreck:mobs/vamire_spawn/true_bat_tick
execute as @e[type=minecraft:item,tag=!bloodbeet.checked] run function manoloesmanolo:tick/entity
execute as @e[type=minecraft:area_effect_cloud,tag=qqru3kaTornado] at @s run function qqruzka:egypt/move_tornado
execute as @e[type=axolotl,tag=enderayo.pixie] at @s run function enderayo:items/pixie
execute as @e[type=phantom,tag=mutantghast] at @s run function patchwreck:mobs/mutant_ghast/tick
execute as @e[tag=enderayo.battlement] at @s run function patchwreck:mobs/bee_battlement/despawn_check
## MOB TICKING END

# Cooldowns, flags, etc.
execute if score $cooldown enderayo.shieldability matches 1.. run scoreboard players remove $cooldown enderayo.shieldability 1
execute if score $cooldown enderayo.shieldability matches 1 run title @a[tag=enderayo.shield_has] actionbar {"text":"Blue-Eyes White Dragon Ability Ready!","color":"#0FB7FF","bold":false,"italic":false}
execute if score $cooldown enderayo.demonomicon matches 1.. run scoreboard players remove $cooldown enderayo.demonomicon 1
execute if score $cooldown enderayo.demonomicon matches 1 run title @a[tag=enderayo.demonomicon] actionbar {"text":"Demonomicon's ability is Ready!","color":"#A10000","bold":false,"italic":false}
scoreboard players set $remove_xenon_tag temp 0

# OLD Branch player ticking events, moved to> patchwreck:player/player_tick
#execute as @a run function enderayo:tick/player
#execute as @a run function manoloesmanolo:tick/player
#execute as @a run function qqruzka:tick/player