#> patchwreck:monument/placed_purple_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 993 105 1027 minecraft:barrier run clear @s minecraft:purple_wool{objective: 1b}
execute unless block 993 105 1027 minecraft:barrier as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 993 105 1027 minecraft:barrier

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/purple_wool=false}] only patchwreck:progression/purple_wool
