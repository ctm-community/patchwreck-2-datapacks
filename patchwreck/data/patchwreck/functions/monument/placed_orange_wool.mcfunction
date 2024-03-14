#> patchwreck:monument/placed_orange_wool

# Only clear objective and play sound the first time this advancement is granted
execute unless block 1004 105 1030 minecraft:orange_wool run clear @s minecraft:orange_wool{objective: 1b}
execute unless block 1004 105 1030 minecraft:orange_wool as @a run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1.2
setblock 1004 105 1030 minecraft:orange_wool

# Grant advancement to remaining players
advancement grant @a[advancements={patchwreck:progression/orange_wool=false}] only patchwreck:progression/orange_wool
