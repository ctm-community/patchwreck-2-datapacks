#> patchwreck:monument/placed_cyan_wool

# Only clear objective and play sound the first time this advancement is granted
execute if block 995 105 1030 minecraft:barrier run return fail
execute unless block 995 105 1030 minecraft:barrier run clear @s minecraft:cyan_wool{objective: 1b}
execute unless block 995 105 1030 minecraft:barrier as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
execute unless block 995 105 1030 minecraft:barrier run summon minecraft:block_display 995.2 105.2 1030.2 {transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0.6f, 0.6f, 0.6f]}, block_state: {Name: "minecraft:cyan_wool"}}
setblock 995 105 1030 minecraft:barrier

# Bells and whistles
tellraw @a [{"text":"Neon Metropolis","color":"light_purple","italic":false},{"text":" unlocked","color":"white"}]
title @a times 20t 60t 30t
title @a title {"text":" ","color":"dark_aqua","italic":false}
title @a subtitle {"text":"Cyan Wool Placed","color":"dark_aqua","italic":false}

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/cyan_wool=false}] only patchwreck:progression/cyan_wool
