#20hz if someone is in the loby
execute if score difficulty game matches ..0 if score 10hz gremloop matches 1 as 3023b61d-3aa7-44e5-b0d7-b88e01c4dbff at @s run particle minecraft:small_flame ~ ~1 ~ 0.2 0.5 0.2 0.03 1 force
execute if score difficulty game matches 1 if score 10hz gremloop matches 1 as 3023b61d-3aa7-44e5-b0d7-b88e01c4dbff at @s run particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.03 1 force
execute if score difficulty game matches 2 if score 10hz gremloop matches 1 as 3023b61d-3aa7-44e5-b0d7-b88e01c4dbff at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.5 0.2 0.03 1 force

gamemode adventure @a[distance=..30,gamemode=survival]
effect give @a[distance=..30] saturation 219 200 true