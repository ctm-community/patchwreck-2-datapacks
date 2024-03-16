#> patchwreck:monument/placed_yellow_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 998 105 1034 minecraft:barrier run clear @s minecraft:yellow_wool{objective: 1b}
execute unless block 998 105 1034 minecraft:barrier as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
execute unless block 998 105 1034 minecraft:barrier run summon minecraft:block_display 998.2 105.2 1034.2 {transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0.6f, 0.6f, 0.6f]}, block_state: {Name: "minecraft:yellow_wool"}}
setblock 998 105 1034 minecraft:barrier

# Bells and whistles
tellraw @a [{"text":"Nuclear Wasteland","color":"green","italic":false},{"text":" unlocked","color":"white"}]
title @a times 20t 60t 30t
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Yellow Wool Placed","color":"yellow","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/yellow_wool=false}] only patchwreck:progression/yellow_wool
