#> patchwreck:void/anchor/create
# Create an anchor point using the target's tether and backup tether positions

# If either tether is invalid fail to create anchor point
execute if entity @s[tag=!patchwreck.valid_void_tether] run return fail

# Reset void storage data
data remove storage patchwreck:void void_anchor
data remove storage patchwreck:void void_tether
data remove storage patchwreck:void void_tether_backup

# Try converting primary tether into anchor point
execute store result storage patchwreck:void void_tether.x float 1 run scoreboard players get @s patchwreck.void_tether.x
execute store result storage patchwreck:void void_tether.y float 1 run scoreboard players get @s patchwreck.void_tether.y
execute store result storage patchwreck:void void_tether.z float 1 run scoreboard players get @s patchwreck.void_tether.z
execute store result score $success patchwreck.variables summon minecraft:marker run function patchwreck:void/tether/convert_to_anchor with storage patchwreck:void void_tether
tellraw @s [{"text": "Void Tether: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]

# Return without checking backup tether if primary tether was successfully converted
execute if score $success patchwreck.variables matches 1 run return 1

# Try converting backup tether into anchor point
execute store result storage patchwreck:void void_tether_backup.x float 1 run scoreboard players get @s patchwreck.void_tether_backup.x
execute store result storage patchwreck:void void_tether_backup.y float 1 run scoreboard players get @s patchwreck.void_tether_backup.y
execute store result storage patchwreck:void void_tether_backup.z float 1 run scoreboard players get @s patchwreck.void_tether_backup.z
execute store result score $success patchwreck.variables summon minecraft:marker run function patchwreck:void/tether/convert_to_anchor with storage patchwreck:void void_tether_backup
tellraw @s [{"text": "Void Tether Backup: "}, {"score":{"objective": "patchwreck.variables", "name": "$success"}}]

# Return tether conversion result
execute if score $success patchwreck.variables matches 1 run return 1
return fail
