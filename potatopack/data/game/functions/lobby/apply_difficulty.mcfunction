#Applies difficulty modifiers

execute if score difficulty game matches ..0 as @a run attribute @s generic.max_health modifier add 3047ba99-ffb9-4066-ae73-4aa5f1cf6c8d "easy" 10 add
execute if score difficulty game matches ..0 as @a run attribute @s generic.armor modifier add 1d9b082f-1685-485c-ae5f-e04b6534c6e2 "easy" 0.1 multiply_base
execute if score difficulty game matches 1.. as @a run attribute @s generic.attack_damage modifier add 0e585317-3ee4-4d35-88cd-864c4ee3d960 "hard" -0.25 multiply

execute unless score difficulty game matches ..0 as @a run attribute @s generic.max_health modifier remove 3047ba99-ffb9-4066-ae73-4aa5f1cf6c8d
execute unless score difficulty game matches ..0 as @a run attribute @s generic.armor modifier remove 1d9b082f-1685-485c-ae5f-e04b6534c6e2
execute unless score difficulty game matches 1.. as @a run attribute @s generic.attack_damage modifier remove 0e585317-3ee4-4d35-88cd-864c4ee3d960
