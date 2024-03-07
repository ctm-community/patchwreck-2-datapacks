#> patchwreck:void/tick
# Run void return ticking operations on players that have not disabled void return

# Return with error if void return is disabled
execute if entity @s[tag=patchwreck.void_return_disabled] run return fail

# Reset void return tracking data in case void return sequence was interrupted
execute if score @s patchwreck.dead matches 1 run function patchwreck:void/return/reset

# Run ticking operations
execute if score 5t patchwreck.timers matches 0 run function patchwreck:void/tick_slow
execute as @s[tag=patchwreck.void_return] run return run function patchwreck:void/return/tick
