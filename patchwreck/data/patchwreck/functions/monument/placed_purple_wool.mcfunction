#> patchwreck:monument/placed_purple_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 995 105 1028 minecraft:barrier run clear @s minecraft:purple_wool{objective: 1b}
execute unless block 995 105 1028 minecraft:barrier as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
execute unless block 995 105 1028 minecraft:barrier run summon minecraft:block_display 995.2 105.2 1028.2 {transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0.6f, 0.6f, 0.6f]}, block_state: {Name: "minecraft:purple_wool"}}
setblock 995 105 1028 minecraft:barrier

# Titles
title @a times 20t 60t 30t
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Purple Wool Placed","color":"light_purple","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/purple_wool=false}] only patchwreck:progression/purple_wool
