scoreboard players add @s tornado_timer 1
tp @s ^ ^ ^0.19 ~ ~
execute as @e[distance=..1.5,type=!area_effect_cloud,type=!player] run function qqruzka:egypt/mob_hit_by_tornado
execute if score @s tornado_timer matches 45.. run kill @s

function qqruzka:egypt/tornado