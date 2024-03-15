#> patchwreck:monument/placed_cyan_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 995 105 1030 minecraft:cyan_wool run clear @s minecraft:cyan_wool{objective: 1b}
execute unless block 995 105 1030 minecraft:cyan_wool as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 995 105 1030 minecraft:cyan_wool

# Bells and whistles
tellraw @a [{"text":"Neon Metropolis","color":"light_purple","italic":false},{"text":" unlocked","color":"white"}]
title @a times 20 60 30
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Cyan Wool Placed","color":"dark_aqua","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/cyan_wool=false}] only patchwreck:progression/cyan_wool
