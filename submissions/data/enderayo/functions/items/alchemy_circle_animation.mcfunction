#> enderayo:items/alchemy_circle_animation

execute as 00000000-0001-44ef-0000-00000000002c at @s run function enderayo:items/circle
execute as 00000000-0001-44ef-0000-00000000002c at @s rotated ~0.6 ~ run tp ~ ~ ~
execute as 00000000-0001-44ef-0000-00000000002c if score $cooldown enderayo.demonomicon matches ..1399 run function enderayo:items/remove_circle

schedule function enderayo:items/alchemy_circle_animation 1t
