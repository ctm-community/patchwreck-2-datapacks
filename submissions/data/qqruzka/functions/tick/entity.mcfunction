#> qqruzka:tick/entity
# Ticking function for non-player entities

execute as @s[type=minecraft:arrow,nbt={item: {id: "minecraft:tipped_arrow", Count: 1b, tag: {custom_potion_effects: [{duration: 100, amplifier: 9b, id: "minecraft:slowness", show_particles: 0b}]}}}] at @s run function qqruzka:neon/arrow_railgun
execute as @s[type=minecraft:area_effect_cloud,nbt={Tags: ["qqru3kaTornado"]}] at @s run function qqruzka:egypt/move_tornado
execute as @s[type=minecraft:item,nbt={Item: {id: "minecraft:stick", tag: {qqru3kaBranch: 1}}}] at @s run function qqruzka:grove/give_sword
execute as @s[type=minecraft:item,nbt={Item: {id: "minecraft:wooden_sword", tag: {qqru3kaMSword: 1}}}] at @s run function qqruzka:grove/give_bow
execute as @s[type=minecraft:item,nbt={Item: {id: "minecraft:bow", tag: {qqru3kaMBow: 1}}}] at @s run function qqruzka:grove/give_branch
execute as @s[type=!#qqruzka:nonhostile] at @s if entity @a[distance=..3.5,nbt={Inventory: [{Slot: -106b, id: "minecraft:stick", tag: {qqru3kaBranch: 1}}]}] run data merge entity @s {Fire: 20s}
