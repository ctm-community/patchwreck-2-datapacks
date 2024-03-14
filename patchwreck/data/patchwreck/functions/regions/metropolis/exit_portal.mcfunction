#> patchwreck:regions/metropolis/exit_portal

# Clear effect since we will re-apply it if the player is in the correct location and not about to teleport
effect clear @s minecraft:levitation

# Apply exit portal effects
effect give @s[tag=!patchwreck.teleport,x=100,y=105,z=100,dx=0,dy=20,dz=0] minecraft:levitation 1 9 true
execute if entity @s[y=100,dy=5] unless score @s patchwreck.abduction matches 1.. run playsound minecraft:block.beacon.ambient master @s 100 105 100 1 0.5
execute if entity @s[y=105,dy=20] unless score @s patchwreck.abduction matches 1.. run playsound minecraft:block.beacon.ambient master @s 100 ~ 100 1 0.5
execute if entity @s[x=99.5,y=105,z=99.5,dx=1,dy=20,dz=1] run playsound minecraft:block.beacon.ambient master @s 100 ~4 100 1 0.5

# Set timer to prevent overlapping sound effects
scoreboard players add @s patchwreck.abduction 1
scoreboard players set @s[scores={patchwreck.abduction=20..}] patchwreck.abduction 0
