#> patchwreck:void/tether/convert_to_anchor
# Try converting a tether at position $(x) $(y) $(z) into an anchor point.
# Execute function as a `minecraft:marker` entity.
# If function does not fail, anchor will be saved to storage variable `patchwreck:void void_anchor`.

# Define minimum y-level for marker to ensure anchor is not created too far below tether point
$scoreboard players set $marker.y.min patchwreck.variables $(y)
scoreboard players remove $marker.y.min patchwreck.variables 1
scoreboard players set $success patchwreck.variables 0

# Test tether without supporting block
$execute store success score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute if score $success patchwreck.variables matches 1 store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $success patchwreck.variables matches 1 unless score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 0
tellraw @a [{"text": "Convert to Anchor 1: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.x double 1 run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.y double 1 run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.z double 1 run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$execute store success score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute if score $success patchwreck.variables matches 1 store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $success patchwreck.variables matches 1 unless score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 0
tellraw @a [{"text": "Convert to Anchor 2: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.x double 1 run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.y double 1 run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.z double 1 run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$execute store success score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute if score $success patchwreck.variables matches 1 store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $success patchwreck.variables matches 1 unless score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 0
tellraw @a [{"text": "Convert to Anchor 3: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.x double 1 run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.y double 1 run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.z double 1 run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$execute store success score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute if score $success patchwreck.variables matches 1 store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $success patchwreck.variables matches 1 unless score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 0
tellraw @a [{"text": "Convert to Anchor 4: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.x double 1 run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.y double 1 run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.z double 1 run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

# If support block can be placed, continue testing tether with support block, otherwise return failure status
$execute store success score $success patchwreck.variables positioned $(x) $(y) $(z) if block ~ ~-1 ~ #patchwreck:air
tellraw @a [{"text": "Placed Support Block: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 0 run return fail
$execute positioned $(x) $(y) $(z) run setblock ~ ~-1 ~ minecraft:gray_stained_glass

# Test tether with supporting block
$execute store success score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute if score $success patchwreck.variables matches 1 store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $success patchwreck.variables matches 1 unless score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 0
tellraw @a [{"text": "Convert to Anchor 1 (Supported): "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.x double 1 run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.y double 1 run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.z double 1 run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$execute store success score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute if score $success patchwreck.variables matches 1 store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $success patchwreck.variables matches 1 unless score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 0
tellraw @a [{"text": "Convert to Anchor 1 (Supported): "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.x double 1 run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.y double 1 run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.z double 1 run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$execute store success score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute if score $success patchwreck.variables matches 1 store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $success patchwreck.variables matches 1 unless score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 0
tellraw @a [{"text": "Convert to Anchor 1 (Supported): "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.x double 1 run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.y double 1 run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.z double 1 run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$execute store success score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute if score $success patchwreck.variables matches 1 store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $success patchwreck.variables matches 1 unless score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 0
tellraw @a [{"text": "Convert to Anchor 1 (Supported): "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.x double 1 run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.y double 1 run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result storage patchwreck:void void_anchor.z double 1 run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

# If all tests failed, return failure status
$execute positioned $(x) $(y) $(z) run setblock ~ ~-1 ~ minecraft:air
kill @s[type=minecraft:marker]
return fail
