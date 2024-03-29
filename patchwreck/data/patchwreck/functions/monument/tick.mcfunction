#> patchwreck:monument/tick

# If player has levitation above monument spawn, align them to spawnpoint
#execute in minecraft:overworld as @a[x=995,y=102,z=995,dx=11,dy=10,dz=11] at @s unless score @s patchwreck.checkpoint matches 1 run teleport @s 1000 ~ 1000

# Announce invalid monument interactions
title @a[advancements={patchwreck:progression/orange_wool_check=true,patchwreck:progression/orange_wool=false}] actionbar [{"translate":"patchwreck.functions.monument.tick.1"}, {"translate":"item.orange_wool.1.name.1","color": "gold"}, {"translate":"patchwreck.functions.monument.tick.3"}]
title @a[advancements={patchwreck:progression/yellow_wool_check=true,patchwreck:progression/yellow_wool=false}] actionbar [{"translate":"patchwreck.functions.monument.tick.1"}, {"translate":"item.yellow_wool.1.name.1","color": "yellow"}, {"translate":"patchwreck.functions.monument.tick.3"}]
title @a[advancements={patchwreck:progression/lime_wool_check=true,patchwreck:progression/lime_wool=false}] actionbar [{"translate":"patchwreck.functions.monument.tick.1"}, {"translate":"item.lime_wool.1.name.1","color": "green"}, {"translate":"patchwreck.functions.monument.tick.3"}]
title @a[advancements={patchwreck:progression/cyan_wool_check=true,patchwreck:progression/cyan_wool=false}] actionbar [{"translate":"patchwreck.functions.monument.tick.1"}, {"translate":"item.cyan_wool.1.name.1","color": "aqua"}, {"translate":"patchwreck.functions.monument.tick.3"}]
title @a[advancements={patchwreck:progression/purple_wool_check=true,patchwreck:progression/purple_wool=false}] actionbar [{"translate":"patchwreck.functions.monument.tick.1"}, {"translate":"item.purple_wool.1.name.1","color": "dark_purple"}, {"translate":"patchwreck.functions.monument.tick.3"}]

# Clear all invalid placement check advancements
advancement revoke @a through patchwreck:progression/purple_wool_check

# Credits sequence timer
execute if score $credits patchwreck.timers matches 1.. run scoreboard players add $credits patchwreck.timers 1
execute if score $credits patchwreck.timers matches 3880.. run scoreboard players set $credits patchwreck.timers 0
execute if score $credits patchwreck.timers matches 1.. run function patchwreck:monument/credits

execute if score $credits_end patchwreck.timers matches 1.. run scoreboard players add $credits_end patchwreck.timers 1
execute if score $credits_end patchwreck.timers matches 800.. run scoreboard players set $credits_end patchwreck.timers 0
execute if score $credits_end patchwreck.timers matches 1.. run function patchwreck:monument/credits_end
