
$spreadplayers ~ ~ 0 12 under $(y) false @s
execute at @s unless block ~ ~-1 ~ #minecraft:airish run particle sculk_charge_pop ~ ~-0.5 ~ 1 0 1 0.05 2 normal @a[distance=..12,limit=1,sort=random]
