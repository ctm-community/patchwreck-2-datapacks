#> patchwreck:monument/placed_orange_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 1000 105 1034 minecraft:orange_wool run clear @s minecraft:orange_wool{objective: 1b}
execute unless block 1000 105 1034 minecraft:orange_wool as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 1000 105 1034 minecraft:orange_wool

# Bells and whistles
tellraw @a [{"text":"Egyptian Tomb","color":"yellow","italic":false},{"text":" unlocked","color":"white"}]
title @a times 20 60 30
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Orange Wool Placed","color":"gold","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/orange_wool=false}] only patchwreck:progression/orange_wool
