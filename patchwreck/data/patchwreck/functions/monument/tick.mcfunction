#> patchwreck:monument/tick

# If player has levitation above monument spawn, align them to spawnpoint
execute in minecraft:overworld as @a[x=995,y=102,z=995,dx=11,dy=10,dz=11] at @s unless score @s patchwreck.checkpoint matches 1 run teleport @s 1000 ~ 1000

# Announce invalid monument interactions
title @a[advancements={patchwreck:progression/orange_wool_check=true,patchwreck:progression/orange_wool=false}] actionbar [{"text": "Hold the "}, {"text": "Orange Wool","color": "gold"}, {"text": " to place it"}]
title @a[advancements={patchwreck:progression/yellow_wool_check=true,patchwreck:progression/yellow_wool=false}] actionbar [{"text": "Hold the "}, {"text": "Yellow Wool","color": "yellow"}, {"text": " to place it"}]
title @a[advancements={patchwreck:progression/lime_wool_check=true,patchwreck:progression/lime_wool=false}] actionbar [{"text": "Hold the "}, {"text": "Lime Wool","color": "green"}, {"text": " to place it"}]
title @a[advancements={patchwreck:progression/cyan_wool_check=true,patchwreck:progression/cyan_wool=false}] actionbar [{"text": "Hold the "}, {"text": "Cyan Wool","color": "aqua"}, {"text": " to place it"}]
title @a[advancements={patchwreck:progression/purple_wool_check=true,patchwreck:progression/purple_wool=false}] actionbar [{"text": "Hold the "}, {"text": "Purple Wool","color": "dark_purple"}, {"text": " to place it"}]

# Clear all invalid placement check advancements
advancement revoke @a through patchwreck:progression/purple_wool_check

# Credits sequence timer
execute if score $credits patchwreck.timers matches 1.. run scoreboard players add $credits patchwreck.timers 1
execute if score $credits patchwreck.timers matches 3880.. run scoreboard players set $credits patchwreck.timers 0
execute if score $credits patchwreck.timers matches 1.. run function patchwreck:monument/credits

execute if score $credits_end patchwreck.timers matches 1.. run scoreboard players add $credits_end patchwreck.timers 1
execute if score $credits_end patchwreck.timers matches 800.. run scoreboard players set $credits_end patchwreck.timers 0
execute if score $credits_end patchwreck.timers matches 1.. run function patchwreck:monument/credits_end
