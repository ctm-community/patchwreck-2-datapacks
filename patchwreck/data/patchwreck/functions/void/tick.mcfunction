#> patchwreck:void/tick

# Run void return procedure if return sequence was initiated
execute as @s[tag=patchwreck.void_return] run return run function patchwreck:void/return/tick

# If player is on stable ground, update tether
execute as @s[nbt={OnGround: 1b}] run function patchwreck:void/tether

# TODO: Remove actionbar debugging
# execute if block ~ ~-0.1 ~ #patchwreck:stable run title @s actionbar [{"score":{"objective": "patchwreck.void_tether.x", "name": "@s"}},{"text": " "},{"score":{"objective": "patchwreck.void_tether.y", "name": "@s"}},{"text": " "},{"score":{"objective": "patchwreck.void_tether.z", "name": "@s"}}]
# execute unless block ~ ~-0.1 ~ #patchwreck:stable run title @s actionbar " "

# If player isn't falling, we can return with success value 1
execute if score @s patchwreck.falling matches 0 run return 1

# If player is falling, update tracking information
function patchwreck:void/falling
