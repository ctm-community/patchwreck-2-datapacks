#> patchwreck:monument/placed_orange_wool

# Only clear objective and play sound the first time this advancement is granted
execute if block 1000 105 1034 minecraft:barrier run return fail
execute unless block 1000 105 1034 minecraft:barrier run clear @s minecraft:orange_wool{objective: 1b}
execute unless block 1000 105 1034 minecraft:barrier as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
execute unless block 1000 105 1034 minecraft:barrier run summon minecraft:block_display 1000.2 105.2 1034.2 {transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0.6f, 0.6f, 0.6f]}, block_state: {Name: "minecraft:orange_wool"}}
setblock 1000 105 1034 minecraft:barrier

# Bells and whistles
tellraw @a [{"text":"Egyptian Tomb","color":"yellow","italic":false},{"text":" unlocked","color":"white"}]
title @a times 20t 60t 30t
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Orange Wool Placed","color":"gold","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/orange_wool=false}] only patchwreck:progression/orange_wool
