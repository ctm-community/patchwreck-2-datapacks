#storing saturation
execute if score @s sd.time matches 1 store result score @s sd.saturation run data get entity @s foodSaturationLevel

#time handling
execute if score @s sd.saturation matches 1 run scoreboard players set @s sd.time 0
execute unless score @s sd.saturation matches 1 if score @s sd.time matches 20.. run scoreboard players set @s sd.time 0