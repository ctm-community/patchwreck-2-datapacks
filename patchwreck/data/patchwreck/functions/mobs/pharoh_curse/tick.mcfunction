#Ticking on the pharoh's curse
particle soul ~ ~0.5 ~ 0.25 0.25 0.25 0.01 2 force @a[distance=..32]
particle falling_dust sand ~ ~0.5 ~ 1.0 1.0 1.0 0.001 4 normal @a[distance=..32]

#Detect vex
scoreboard players set temp temp 1
execute on vehicle run scoreboard players set temp temp 0
execute if score temp temp matches 1 run kill @s