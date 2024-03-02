#Tornado hits entity 

execute if entity @s[nbt={OnGround:1b}] run playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 1 1.5
data merge entity @s {active_effects:[{id:"minecraft:levitation",amplifier:30b,duration:3,show_particles:0b}]}
