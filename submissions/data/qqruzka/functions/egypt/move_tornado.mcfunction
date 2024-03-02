scoreboard players add @s tornado_timer 1
tp @s ^ ^ ^0.1 ~ ~
execute as @e[type=!area_effect_cloud,type=!player] at @s if entity @e[tag=qqru3kaTornado,distance=..1.5] run effect give @s levitation 1 5 true
execute if score @s tornado_timer matches 50.. run kill @s