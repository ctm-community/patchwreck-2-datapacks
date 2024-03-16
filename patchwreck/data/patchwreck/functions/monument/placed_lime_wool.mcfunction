#> patchwreck:monument/placed_lime_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 996 105 1032 minecraft:barrier run clear @s minecraft:lime_wool{objective: 1b}
execute unless block 996 105 1032 minecraft:barrier as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
execute unless block 996 105 1032 minecraft:barrier run summon minecraft:block_display 996.2 105.2 1032.2 {transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0.6f, 0.6f, 0.6f]}, block_state: {Name: "minecraft:lime_wool"}}
setblock 996 105 1032 minecraft:barrier

# Bells and whistles
tellraw @a [{"text":"Enchanted Grove","color":"dark_aqua","italic":false},{"text":" unlocked","color":"white"}]
title @a times 20t 60t 30t
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Lime Wool Placed","color":"green","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/lime_wool=false}] only patchwreck:progression/lime_wool
