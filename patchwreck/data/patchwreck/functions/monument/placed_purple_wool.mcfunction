#> patchwreck:monument/placed_purple_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 1004 105 1030 minecraft:purple_wool run clear @s minecraft:purple_wool{objective: 1b}
execute unless block 1004 105 1030 minecraft:purple_wool as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 1004 105 1030 minecraft:purple_wool

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/purple_wool=false}] only patchwreck:progression/purple_wool
