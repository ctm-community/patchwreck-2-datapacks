#> patchwreck:tick
# Handle all Patchwreck ticking events

# Global monument ticking operations
function patchwreck:monument/tick

# Moved player ticking to central function (these are optimized or optimized enough)
# Generally, it is best to do player ticking before entities
execute as @a at @s run function patchwreck:player/tick
execute if score 1hz gremloop matches 13 run function game:lobby/apply_difficulty

## Mob ticking below
execute if score $remove_xenon_tag temp matches 1.. run tag @e[tag=xenon_lamp_decay] remove xenon_lamp_decay
execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=#minecraft:hasai,type=!minecraft:player,distance=..5.5] add enderayo.incircle
execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=#minecraft:hasai,type=!minecraft:player,distance=5.51..10] remove enderayo.incircle
execute if score 10s gremloop matches 111 as @e[type=minecraft:bee,tag=enderayo.angry] at @s unless entity @a[distance=..32] run kill @s
execute if score 5hz gremloop matches 0 as @e[tag=m97_antenna] at @s run function matt97:antenna/tick
execute if score 5hz gremloop matches 1 as @e[tag=m97_kitsune] at @s run function matt97:kitsune/tick
execute if score 5hz gremloop matches 2 as @e[type=minecraft:bee,tag=enderayo.angry] at @s run function patchwreck:mobs/bee_battlement/bee_tick
execute if score 5hz gremloop matches 3 as @e[tag=m97_weaponswap] at @s run function matt97:weaponswap/tick
execute if score 5hz gremloop matches 3 as @e[type=minecraft:shulker,tag=bushker] at @s positioned ~-0.5 ~-2 ~-0.5 unless entity @e[dx=0,dy=3,dz=0,type=minecraft:sniffer] run function patchwreck:mobs/bush/kill with entity @s
execute if score 10hz gremloop matches 1 as @e[type=minecraft:skeleton_horse,tag=enderayo.tron] at @s run function enderayo:mobs/trail
execute if score 10hz gremloop matches 1 as @e[type=minecraft:interaction,tag=enderayo.curse] at @s run function patchwreck:mobs/pharoh_curse/tick
execute if score 10hz gremloop matches 0 as @e[type=minecraft:bat,tag=enderayo.true] at @s run function patchwreck:mobs/vamire_spawn/true_bat_tick
execute if score 10hz gremloop matches 0 as @e[type=minecraft:slime,tag=!slime] at @s run function tools:helper/entity/voidkill
execute as @e[tag=m97_create] at @s run function matt97:chain_creation
execute as @e[tag=m97_hoverbot] at @s run function matt97:hoverbot/tick
execute as @e[tag=m97_model] run function matt97:model
execute as @e[type=minecraft:bee,tag=m97_batswarm] at @s run function matt97:batswarm/tick
kill @e[type=minecraft:endermite,tag=enderayo.temp]
execute as @e[type=minecraft:item,tag=!bloodbeet.checked] run function manoloesmanolo:tick/entity
execute as @e[type=minecraft:area_effect_cloud,tag=qqru3kaTornado] at @s run function qqruzka:egypt/move_tornado
execute as @e[type=minecraft:axolotl,tag=enderayo.pixie] at @s run function enderayo:items/pixie
execute as @e[type=minecraft:phantom,tag=mutantghast] at @s run function patchwreck:mobs/mutant_ghast/tick
execute as @e[tag=enderayo.battlement] at @s run function patchwreck:mobs/bee_battlement/despawn_check
execute as @e[type=minecraft:trident,predicate=patchwreck:loyal] run data modify entity @s DealtDamage set value 1b
## Mob ticking end

# Cooldowns, Flags, etc.
execute if score $cooldown enderayo.shieldability matches 1.. run scoreboard players remove $cooldown enderayo.shieldability 1
execute if score $cooldown enderayo.shieldability matches 1 run title @a[tag=enderayo.shield_has] actionbar {"text":"Blue-Eyes White Dragon Ability Ready!","color":"#0FB7FF","bold":false,"italic":false}
execute if score $cooldown enderayo.demonomicon matches 1.. run scoreboard players remove $cooldown enderayo.demonomicon 1
execute if score $cooldown enderayo.demonomicon matches 1 run title @a[tag=enderayo.demonomicon] actionbar {"text":"Demonomicon's ability is Ready!","color":"#A10000","bold":false,"italic":false}
scoreboard players set $remove_xenon_tag temp 0
scoreboard players set @a patchwreck.dead 0

# Patchwreck timers
scoreboard players add 5t patchwreck.timers 1
execute if score 5t patchwreck.timers matches 5 run scoreboard players set 5t patchwreck.timers 0
scoreboard players add 1s patchwreck.timers 1
execute if score 1s patchwreck.timers matches 20.. run scoreboard players set 1s patchwreck.timers 0

execute if score $light_blue enderayo.hyperdrift matches 0.. run scoreboard players remove $light_blue enderayo.hyperdrift 1
execute if score $magenta enderayo.hyperdrift matches 0.. run scoreboard players remove $magenta enderayo.hyperdrift 1

# Teleporters check
execute if score 1s patchwreck.timers matches 2 run function patchwreck:monument/unlock_teleporters

# Handle hyperdrift helmet transition display
function enderayo:hyperdrift_helmet/tick

# particle for nuclear wasteland +metropolis + gothic
execute in patchwreck:wasteland as @a[distance=..999] at @s run function patchwreck:wateland_particle/player
execute in patchwreck:metropolis as @a[distance=..999,limit=1,sort=random] at @s run function patchwreck:regions/metropolis/particles/player
execute in patchwreck:metropolis positioned 100 105 100 run function patchwreck:regions/metropolis/particles/exit_portal/animate
execute if score inmetro temp matches 1.. as @e[type=minecraft:marker,tag=metro_part] at @s run function patchwreck:regions/metropolis/particles/marker_tick
execute if score inmetro temp matches 1.. run tag @e[type=minecraft:marker,tag=metro_part] remove bloop
scoreboard players set inmetro temp 0
execute in patchwreck:gothic positioned 99 0 95 if loaded ~ ~ ~ as @e[distance=..10,type=minecraft:block_display,limit=1,sort=random] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run particle block suspicious_gravel ~ ~0.5 ~ 0.25 0 0.25 0 1 force

