#> patchwreck:void/return/damage
# Calculate and apply damage based on global difficulty

execute store result score difficulty temp run difficulty
execute store result score $damage patchwreck.variables run attribute @s generic.max_health get 10
execute if score difficulty temp matches ..1 run scoreboard players operation $damage patchwreck.variables *= 25 numbers
execute if score difficulty temp matches 2 run scoreboard players operation $damage patchwreck.variables *= 32 numbers
execute if score difficulty temp matches 3.. run scoreboard players operation $damage patchwreck.variables *= 40 numbers
scoreboard players operation $damage patchwreck.variables /= 100 numbers
execute store result storage patchwreck:storage variables.damage float 0.1 run scoreboard players get $damage patchwreck.variables
function patchwreck:void/return/damage_macro with storage patchwreck:storage variables
