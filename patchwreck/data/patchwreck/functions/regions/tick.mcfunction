#> patchwreck:regions/tick

# Tag player if they are adjacent to a dimensional portal
execute at @s if block ~ ~-0.2 ~ minecraft:end_portal_frame[eye=true,facing=west] run tag @s add patchwreck.teleport
execute at @s if block ~-0.4 ~ ~ minecraft:end_portal_frame[eye=true,facing=west] run tag @s add patchwreck.teleport
execute at @s if block ~0.4 ~ ~ minecraft:end_portal_frame[eye=true,facing=west] run tag @s add patchwreck.teleport
execute at @s if block ~ ~ ~-0.4 minecraft:end_portal_frame[eye=true,facing=west] run tag @s add patchwreck.teleport
execute at @s if block ~ ~ ~0.4 minecraft:end_portal_frame[eye=true,facing=west] run tag @s add patchwreck.teleport
execute at @s if block ~ ~1.8 ~ minecraft:end_portal_frame[eye=true,facing=west] run tag @s add patchwreck.teleport

# Metropolis portal operations
execute if entity @s[x=98,y=100,z=98,dx=5,dy=25,dz=5,nbt={Dimension: "patchwreck:metropolis"}] run function patchwreck:regions/metropolis/exit_portal
execute unless entity @s[x=98,y=100,z=98,dx=5,dy=25,dz=5,nbt={Dimension: "patchwreck:metropolis"}] run scoreboard players set @s patchwreck.abduction 0

# Teleport after all region operations for this tick have finished to ensure cleanup code has at least one tick to run
execute as @s[tag=patchwreck.teleport] run function patchwreck:regions/teleport
