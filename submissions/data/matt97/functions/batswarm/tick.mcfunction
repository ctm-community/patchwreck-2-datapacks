#> matt97:batswarm/tick

# Flags
scoreboard players set m97_dummyPlayer m97_swarm_count 0
scoreboard players set @s m97_swarm_count 0

# Store my coordinates
execute at @s run function matt97:batswarm/swarm_storage

#Branch to the bats
execute at @s positioned ~-8 ~-8 ~-8 as @e[dx=15,dy=15,dz=15,type=minecraft:bat,tag=m97_swarm] anchored eyes at @s run function matt97:batswarm/bat

#Death and upkeep
scoreboard players operation @s m97_swarm_count = m97_dummyPlayer m97_swarm_count
execute if entity @s[scores={m97_swarm_count=..3}] run teleport @s ~ -100000 ~

data merge entity @s[type=minecraft:bee] {HasStung: 0b, TicksSincePollination: 20000000, CannotEnterHiveTicks: 1000000, AngerTime: 20000000}
