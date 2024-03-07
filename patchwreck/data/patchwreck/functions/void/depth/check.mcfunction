#> patchwreck:void/depth/check
# Determine if there is enough air beneath the player to trigger void return

# If block is not void, return fail, otherwise remove 1 from the remaining blocks that need to be checked
execute unless block ~ ~ ~ #patchwreck:air run return fail
scoreboard players remove $check_void_depth patchwreck.variables 1

# If no more blocks need to be checked return success 1, otherwise run the next check and return its success value
execute if score $check_void_depth patchwreck.variables matches 0 run return 1
execute positioned ~ ~-1 ~ run return run function patchwreck:void/depth/check
