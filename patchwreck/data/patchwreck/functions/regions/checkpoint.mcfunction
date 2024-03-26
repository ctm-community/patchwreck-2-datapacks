#> patchwreck:regions/checkpoint
# Set player spawn point to the nearest checkpoint

# Tag players who are eligible to get checkpoint
scoreboard players operation $checkpoint_check patchwreck.variables = @s patchwreck.checkpoint
execute as @a unless score @s patchwreck.checkpoint = $checkpoint_check patchwreck.variables unless score $checkpoint_cd patchwreck.variables matches 1.. run tag @s add patchwreck.set_checkpoint

# Determine if checkpoint is clear from hazards
execute store result score $checkpoint.hazard patchwreck.variables run execute if entity @e[distance=..8,type=#minecraft:hasai,type=!minecraft:player,type=!minecraft:axolotl]
execute if score $checkpoint.hazard patchwreck.variables matches 1 run title @a[distance=..3,tag=patchwreck.set_checkpoint] actionbar [{"text": "Checkpoint blocked, there is 1 monster nearby"}]
execute if score $checkpoint.hazard patchwreck.variables matches 2.. run title @a[distance=..3,tag=patchwreck.set_checkpoint] actionbar [{"text": "Checkpoint blocked, there are "}, {"score": {"name": "$checkpoint.hazard", "objective": "patchwreck.variables"}}, {"text": " monsters nearby"}]
execute if score $checkpoint.hazard patchwreck.variables matches 1.. run return fail

# Store checkpoint entity data
data modify storage patchwreck:storage checkpoint.yaw set from entity @s Rotation[0]
scoreboard players operation $checkpoint patchwreck.variables = @s patchwreck.checkpoint

# Failsafes
execute if entity @a[tag=patchwreck.set_checkpoint,limit=1] in overworld run fill 999 102 999 1001 113 1001 cave_air replace barrier
execute if entity @a[tag=patchwreck.set_checkpoint,limit=1] run scoreboard players set $checkpoint_cd patchwreck.variables 120

# Update checkpoint for applicable players
execute at @s as @a[tag=patchwreck.set_checkpoint] run function patchwreck:regions/checkpoint_macro with storage patchwreck:storage checkpoint
tellraw @a[tag=patchwreck.set_checkpoint] [{"text":"Set spawn point to "},{"selector":"@s"}]
scoreboard players operation @a[tag=patchwreck.set_checkpoint] patchwreck.checkpoint = $checkpoint patchwreck.variables
tag @a[tag=patchwreck.set_checkpoint] remove patchwreck.set_checkpoint
