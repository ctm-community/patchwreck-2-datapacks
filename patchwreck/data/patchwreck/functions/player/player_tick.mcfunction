#20hz on all players

# Beetroot offshoot
execute if entity @s[tag=beetrooter] run function patchwreck:player/beetroot_tick

# Ghoulguts
effect clear @s[scores={enderayo.hunger=1..}] hunger
scoreboard players set @s[scores={enderayo.hunger=1..}] enderayo.hunger 0

# Blue-Eyes White Dragon
execute as @s[tag=enderayo.shieldability,scores={enderayo.shieldability=1..},predicate=enderayo:is_sneaking] if score $cooldown enderayo.shieldability matches 0 at @s run function enderayo:items/shieldability
execute as @s[scores={enderayo.shieldability=1..}] run scoreboard players set @s enderayo.shieldability 0

# Remove advancements and flags
scoreboard players set @s bloodbeet.kills 0
advancement revoke @s only patchwreck:invchange
advancement revoke @s only qqruzka:hurt