#> patchwreck:monument/tick

execute if score $credits patchwreck.timers matches 1.. run scoreboard players add $credits patchwreck.timers 1
execute if score $credits patchwreck.timers matches 3100.. run scoreboard players set $credits patchwreck.timers 0

execute if score $credits patchwreck.timers matches 1.. run function patchwreck:monument/credits
