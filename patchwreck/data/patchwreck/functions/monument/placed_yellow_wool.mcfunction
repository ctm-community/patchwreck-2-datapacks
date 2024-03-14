#> patchwreck:monument/placed_yellow_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 998 105 1034 minecraft:barrier run clear @s minecraft:yellow_wool{objective: 1b}
execute unless block 998 105 1034 minecraft:barrier as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 998 105 1034 minecraft:barrier

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/yellow_wool=false}] only patchwreck:progression/yellow_wool
