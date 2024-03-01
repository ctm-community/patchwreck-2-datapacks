#runs at 20hz, this function determines/updates the area each player is in

#Find the area the player is in

#Execute ambience accordingly
execute as @a[scores={area=0}] at @s run function game:ambience/alobby
execute as @a[scores={area=-1}] at @s run function game:ambience/amon
execute as @a[scores={area=1}] at @s run function game:ambience/a1
execute as @a[scores={area=2}] at @s run function game:ambience/a2
execute as @a[scores={area=3}] at @s run function game:ambience/a3
execute as @a[scores={area=4}] at @s run function game:ambience/a4
execute as @a[scores={area=5}] at @s run function game:ambience/a5
execute as @a[scores={area=6}] at @s run function game:ambience/a6
execute as @a[scores={area=7}] at @s run function game:ambience/a7
execute as @a[scores={area=8}] at @s run function game:ambience/a8
execute as @a[scores={area=9}] at @s run function game:ambience/a9
execute as @a[scores={area=10}] at @s run function game:ambience/a10
execute as @a[scores={area=11}] at @s run function game:ambience/a11
execute as @a[scores={area=12}] at @s run function game:ambience/a12
execute as @a[scores={area=13}] at @s run function game:ambience/a13
execute as @a[scores={area=14}] at @s run function game:ambience/a14
execute as @a[scores={area=15}] at @s run function game:ambience/a15
execute as @a[scores={area=16}] at @s run function game:ambience/a16