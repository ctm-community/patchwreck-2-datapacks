#> patchwreck:monument/placed_cyan_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 1004 105 1030 minecraft:cyan_wool run clear @s minecraft:cyan_wool{objective: 1b}
execute unless block 1004 105 1030 minecraft:cyan_wool as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 1004 105 1030 minecraft:cyan_wool

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/cyan_wool=false}] only patchwreck:progression/cyan_wool
