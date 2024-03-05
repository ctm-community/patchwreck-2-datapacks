#> patchwreck:player/tick
# 20hz on all players

# Beetroot offshoot
execute if entity @s[tag=beetrooter] run function patchwreck:player/beetroot_tick

# Ghoulguts
effect clear @s[scores={enderayo.hunger=1..}] hunger
scoreboard players set @s[scores={enderayo.hunger=1..}] enderayo.hunger 0

# Blue-Eyes White Dragon
execute as @s[tag=enderayo.shieldability,scores={enderayo.shieldability=1..},predicate=enderayo:is_sneaking] if score $cooldown enderayo.shieldability matches 0 at @s run function enderayo:items/shieldability
execute as @s[scores={enderayo.shieldability=1..}] run scoreboard players set @s enderayo.shieldability 0

# Demononicon
execute as @s[tag=enderayo.demonomicon] run scoreboard players enable @s enderayo.demonomicon
execute if score @s enderayo.demonomicon matches 1.. if score $cooldown enderayo.demonomicon matches 0 at @s run function enderayo:items/demonomicon
execute if score @s enderayo.demonomicon matches 1.. if score $cooldown enderayo.demonomicon matches 1.. at @s run title @s actionbar {"text":"Demonomicon's ability is on cooldown.","color":"gray","bold":false,"italic":false}
scoreboard players set @s enderayo.demonomicon 0

# Remove advancements and flags
scoreboard players set @s bloodbeet.kills 0
advancement revoke @s only patchwreck:inventory_changed
advancement revoke @s only qqruzka:hurt

# Fire permuter
execute if score 1hz gremloop matches 13 if entity @s[tag=fire_permuter] as @e[distance=..10,type=#minecraft:hasai,type=!axolotl,type=!player] at @s run function patchwreck:item/permuter/apply_fire
