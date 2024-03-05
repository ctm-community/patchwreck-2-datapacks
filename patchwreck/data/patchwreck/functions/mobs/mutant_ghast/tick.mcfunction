#Ticking for mutant ghast

execute unless score @s enderayo.ghastcharge matches 175.. unless entity @a[distance=..16] run scoreboard players add @s enderayo.ghastcharge 1
execute if score @s enderayo.ghastcharge matches 25.. unless score @s enderayo.ghastcd matches 1.. at @s if entity @a[distance=8..16,gamemode=!creative,gamemode=!spectator] run function enderayo:mobs/mutantghast
execute unless score @s enderayo.ghastcd matches ..0 run scoreboard players remove @s enderayo.ghastcd 1