#> qqruzka:tick/entity
# Ticking function for non-player entities

execute as @s[type=minecraft:arrow,nbt={item: {id: "minecraft:tipped_arrow", Count: 1b, tag: {custom_potion_effects: [{duration: 100, amplifier: 9b, id: "minecraft:slowness", show_particles: 0b}]}}}] at @s run function qqruzka:neon/arrow_railgun
execute as @s[type=minecraft:area_effect_cloud,tag=qqru3kaTornado] at @s run function qqruzka:egypt/move_tornado
