#> patchwreck:monument/placed_purple_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 995 105 1028 minecraft:purple_wool run clear @s minecraft:purple_wool{objective: 1b}
execute unless block 995 105 1028 minecraft:purple_wool as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 995 105 1028 minecraft:purple_wool

# Titles
title @a times 20 60 30
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Purple Wool Placed","color":"light_purple","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/purple_wool=false}] only patchwreck:progression/purple_wool
