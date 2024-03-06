#> patchwreck:void/return/use_tether
# Use marker entity to test if tether position is still valid for the player

# Test if the marker can be placed without support block
$execute store result score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s

# If spreadplayers failed, try placing support block and check again
$execute unless score $success patchwreck.variables matches 1.. positioned $(x) $(y) $(z) if block ~ ~-1 ~ #patchwreck:air run setblock ~ ~-1 ~ minecraft:gray_stained_glass
$execute unless score $success patchwreck.variables matches 1.. store result score $success patchwreck.variables run spreadplayers $(x) $(z) 0 1 under $(y) true @s

# If spreadplayers failed both attempts, return that test failed
execute unless score $success patchwreck.variables matches 1.. run return fail

# If spreadplayers was successful, verify that marker was not placed too far below target y-level
$scoreboard players set $marker.y.min patchwreck.variables $(y)
scoreboard players remove $marker.y.min patchwreck.variables 1
scoreboard players set $success patchwreck.variables 0

# If position is above minimum y-level set anchor at marker's position, otherwise retry spreadplayers to see if it chooses a better location
execute store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.x run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.y run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.z run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.x run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.y run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.z run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.x run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.y run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.z run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.x run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.y run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.z run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

$spreadplayers $(x) $(z) 0 1 under $(y) true @s
execute store result score $marker.y patchwreck.variables run data get entity @s Pos[1]
execute if score $marker.y patchwreck.variables >= $marker.y.min patchwreck.variables run scoreboard players set $success patchwreck.variables 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.x run data get entity @s Pos[0] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.y run data get entity @s Pos[1] 1
execute if score $success patchwreck.variables matches 1 store result score @s patchwreck.void_anchor.z run data get entity @s Pos[2] 1
execute if score $success patchwreck.variables matches 1 run kill @s[type=minecraft:marker]
execute if score $success patchwreck.variables matches 1 run return 1

# After five attempts, kill marker and report tether failure
kill @s[type=minecraft:marker]
return fail
