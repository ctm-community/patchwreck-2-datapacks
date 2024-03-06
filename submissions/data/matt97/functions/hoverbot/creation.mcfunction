#> matt97:hoverbot/creation

execute store result score m97_dummyPlayer m97_health_query run data get entity @s Health

# Replaces the placeholder mob with the actual Hover Sentry
summon minecraft:bee ~ ~ ~ {Silent: 1b, Health: 14f, CannotEnterHiveTicks: 20000000, AngerTime: 20000000, Tags: ["m97_hoverbot", "m97_init"], Passengers: [{id: "minecraft:skeleton", Silent: 1b, Health: 14f, Tags: ["m97_hoverbot", "m97_init"], CustomName: '{"text":"Hover Sentry"}', HandItems: [{id: "minecraft:bow", Count: 1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}, {}], HandDropChances: [-327.670f, 0.085f], ArmorItems: [{}, {}, {id: "minecraft:netherite_chestplate", Count: 1b, tag: {AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 0, Operation: 1, UUID: [I; 985406298, 1967342745, -1566125923, -88964075]}, {AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 0, Operation: 1, UUID: [I; 232347864, -840875021, -1651501444, 1141948408]}]}}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; -1482903061, -271891555, -1800396637, -38271559], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M3NDgzNDYxZTk0OTlkM2VkMTY0NWJmOGEwNjEzNmU2NDg1ODdhZWM4ODc3OTk4NWI4ZTIyYWRlNTcifX19"}]}}}}], ArmorDropChances: [0.085f, 0.085f, -327.670f, -327.670f], active_effects: [{id: "minecraft:invisibility", amplifier: 0b, duration: 1000000, show_particles: 0b}], Attributes: [{Name: "generic.max_health", Base: 16}]}], active_effects: [{id: "minecraft:invisibility", amplifier: 0b, duration: 1000000, show_particles: 0b}], Attributes: [{Name: "generic.max_health", Base: 16}, {Name: "generic.attack_damage", Base: 0}]}

execute as @e[tag=m97_init,tag=m97_hoverbot] at @s run function matt97:hoverbot/init

teleport @s ~ -20000 ~
kill @s
