#> patchwreck:void/depth/check
# Determine if there is enough air beneath the player to trigger void return

# Set the number of blocks to check
scoreboard players set $check_void_depth patchwreck.variables 16

# Return the result of the depth raycast (0: failure, 1: success)
execute at @s anchored feet positioned ~ ~-1 ~ run return run function patchwreck:void/depth/raycast
