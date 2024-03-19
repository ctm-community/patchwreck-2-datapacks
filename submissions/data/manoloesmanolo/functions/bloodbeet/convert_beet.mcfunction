#> manoloesmanolo:bloodbeet/convert_beet
# Convert an entity into a Bloodthirsty Beet

data merge entity @s {Silent: 1b, DeathLootTable: "manoloesmanolo:empty", CanPickUpLoot: 0b, Health: 6f, IsBaby: 1b, CustomName: '{"text":"Bloodthirsty Beet"}', HandItems: [{}, {}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 2.000f], active_effects: [{id: "minecraft:strength", amplifier: 0b, duration: -1}, {id: "minecraft:invisibility", amplifier: 0b, duration: -1, show_particles: 0b}], Attributes: [{Name: "generic.max_health", Base: 6}, {Name: "generic.knockback_resistance", Base: 1}, {Name: "generic.movement_speed", Base: 0.1d}]}
data modify entity @s Motion set from storage manoloesmanolo:storage entity.Motion
data modify entity @s Pos set from storage manoloesmanolo:storage entity.Pos
effect give @s weakness 1 100 true

# NOTE: Set $item_count score in patchwreck.variables objective before calling this function to set the amount of items to loot into the mob
loot replace entity @s armor.head loot patchwreck:gothic/bloodthirsty_beet
