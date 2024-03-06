#Ticking on the pharoh's curse
particle soul ~ ~0.5 ~ 0.25 0.25 0.25 0.01 2 force @a[distance=..32]
particle falling_dust sand ~ ~0.5 ~ 1.0 1.0 1.0 0.001 4 normal @a[distance=..32]

#Detect vex
execute unless predicate matt97:mounted run function patchwreck:mobs/pharoh_curse/kill