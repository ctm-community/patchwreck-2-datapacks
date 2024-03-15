#Locks and unlocks teleporters

fill 1023 102 996 1023 105 996 minecraft:black_concrete replace minecraft:end_portal_frame
execute if entity @a[limit=1,advancements={patchwreck:progression/orange_wool=true}] run fill 1023 102 996 1023 105 996 minecraft:end_portal_frame[eye=true,facing=west] replace minecraft:black_concrete

fill 1001 102 980 999 102 976 minecraft:black_concrete replace minecraft:end_portal_frame
execute if entity @a[limit=1,advancements={patchwreck:progression/yellow_wool=true}] run fill 1001 102 980 999 102 976 minecraft:end_portal_frame[eye=true,facing=west] replace minecraft:black_concrete

fill 980 102 995 977 102 998 minecraft:black_concrete replace minecraft:end_portal_frame
execute if entity @a[limit=1,advancements={patchwreck:progression/lime_wool=true}] run fill 980 102 995 977 102 998 minecraft:end_portal_frame[eye=true,facing=west] replace minecraft:black_concrete

fill 979 103 1003 978 106 1006 minecraft:black_concrete replace minecraft:end_portal_frame
execute if entity @a[limit=1,advancements={patchwreck:progression/cyan_wool=true}] run fill 979 103 1003 978 106 1006 minecraft:end_portal_frame[eye=true,facing=west] replace minecraft:black_concrete
