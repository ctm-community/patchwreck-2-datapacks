#> patchwreck:player/tick
# 20hz on all players

# Void return
function patchwreck:void/tick

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

# Special effects when hit by shulkers
execute unless entity @s[advancements={patchwreck:utility/shulker_hits_you=false,patchwreck:utility/bullet_hits_you=false}] run function patchwreck:player/hit_by_bulker

# Check inventory changes
execute as @s[advancements={patchwreck:utility/inventory_changed=true}] run function patchwreck:player/inventory_changed
execute if score @s patchwreck.dead matches 1 run clear @s #wool

# Remove advancements and flags
scoreboard players set @s bloodbeet.kills 0
advancement revoke @s only patchwreck:utility/inventory_changed
advancement revoke @s only qqruzka:hurt

# Fire permuter
execute if score 1hz gremloop matches 13 if entity @s[tag=fire_permuter] as @e[distance=..10,type=#minecraft:hasai,type=!axolotl,type=!player] at @s run function patchwreck:item/permuter/apply_fire

# Hyperdrifter
execute if entity @s[tag=hyperdrifter] run function sd:update_players

# Fixing pixie
execute if score @s water_used matches 1.. run scoreboard players set @s axol_used 1
execute if score @s water_used matches 1.. run scoreboard players set @s water_used 0
execute if score @s axol_used matches 1.. run clear @s bucket 1
execute if score @s axol_used matches 1.. run give @s water_bucket
execute if score @s axol_used matches 1.. run scoreboard players set @s axol_used 0
