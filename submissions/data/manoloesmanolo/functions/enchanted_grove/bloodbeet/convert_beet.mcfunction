#> manoloesmanolo:enchanted_grove/bloodbeet/convert_beet
# Convert an entity into a Bloodthirsty Beet

data merge entity @s {Silent: 1b, DeathLootTable: "manoloesmanolo:empty", CanPickUpLoot: 0b, Health: 6f, IsBaby: 1b, CustomName: '{"text":"Bloodthirsty Beet"}', HandItems: [{}, {}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 2.000f], active_effects: [{id: "minecraft:strength", amplifier: 0b, duration: -1}, {id: "minecraft:invisibility", amplifier: 0b, duration: -1, show_particles: 0b}], Attributes: [{Name: "generic.max_health", Base: 6}, {Name: "generic.knockback_resistance", Base: 1}, {Name: "generic.movement_speed", Base: 0.1d}]}
data modify entity @s ArmorItems set from storage manoloesmanolo:macro entity.ArmorItems
data modify entity @s Motion set from storage manoloesmanolo:macro entity.Motion
data modify entity @s Pos set from storage manoloesmanolo:macro entity.Pos
