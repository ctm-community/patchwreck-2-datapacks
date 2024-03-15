#> patchwreck:monument/placed_yellow_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 998 105 1034 minecraft:yellow_wool run clear @s minecraft:yellow_wool{objective: 1b}
execute unless block 998 105 1034 minecraft:yellow_wool as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 998 105 1034 minecraft:yellow_wool

# Bells and whistles
tellraw @a [{"text":"Nuclear Wasteland","color":"green","italic":false},{"text":" unlocked","color":"white"}]
title @a times 20 60 30
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Yellow Wool Placed","color":"yellow","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/yellow_wool=false}] only patchwreck:progression/yellow_wool
