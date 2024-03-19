#Applies difficulty modifiers

#Update
execute store result score difcheck temp run difficulty
execute if score difcheck temp matches 1 unless score difficulty game matches 0 run difficulty normal
execute if score difcheck temp matches 1 unless score difficulty game matches 0 run scoreboard players set difficulty game 0
execute if score difcheck temp matches 2 unless score difficulty game matches 0..1 run scoreboard players set difficulty game 1
execute if score difcheck temp matches 3 unless score difficulty game matches 2 run scoreboard players set difficulty game 2

#Attributes
execute if score difficulty game matches ..0 as @a run attribute @s generic.max_health modifier add 3047ba99-ffb9-4066-ae73-4aa5f1cf6c8d "easy" 10 add
execute if score difficulty game matches ..0 as @a run attribute @s generic.armor modifier add 1d9b082f-1685-485c-ae5f-e04b6534c6e2 "easy" 0.1 multiply_base
execute if score difficulty game matches 2.. as @a run attribute @s generic.attack_damage modifier add 0e585317-3ee4-4d35-88cd-864c4ee3d960 "hard" -0.25 multiply

execute unless score difficulty game matches ..0 as @a run attribute @s generic.max_health modifier remove 3047ba99-ffb9-4066-ae73-4aa5f1cf6c8d
execute unless score difficulty game matches ..0 as @a run attribute @s generic.armor modifier remove 1d9b082f-1685-485c-ae5f-e04b6534c6e2
execute unless score difficulty game matches 2.. as @a run attribute @s generic.attack_damage modifier remove 0e585317-3ee4-4d35-88cd-864c4ee3d960