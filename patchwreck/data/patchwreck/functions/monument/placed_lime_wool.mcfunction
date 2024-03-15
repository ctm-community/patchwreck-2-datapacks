#> patchwreck:monument/placed_lime_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 996 105 1032 minecraft:lime_wool run clear @s minecraft:lime_wool{objective: 1b}
execute unless block 996 105 1032 minecraft:lime_wool as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 996 105 1032 minecraft:lime_wool

# Bells and whistles
tellraw @a [{"text":"Enchanted Grove","color":"dark_aqua","italic":false},{"text":" unlocked","color":"white"}]
title @a times 20 60 30
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Lime Wool Placed","color":"green","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/lime_wool=false}] only patchwreck:progression/lime_wool
