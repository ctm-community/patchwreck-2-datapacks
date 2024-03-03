#> enderayo:items/ghoulguts

effect give @s absorption 120 0

#Have to clear hunger a tick later as it does not immediately register
scoreboard players add @s enderayo.hunger 1
advancement revoke @s only enderayo:ghoulguts
