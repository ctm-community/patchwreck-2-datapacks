execute as @e[tag=congopart] at @s run function clm:congopart
execute as @e[tag=congopart] at @s run function clm:congodeath
execute as @e[tag=congoinit,tag=congostart,tag=buffer] at @s run function clm:congospawn
execute as @e[tag=congoinit,tag=congostart] at @s run tag @s add buffer

execute as @a[scores={phe_listen=0}] run scoreboard players add @s phe_listen 1