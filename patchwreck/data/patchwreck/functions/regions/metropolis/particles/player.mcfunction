#> patchwreck:regions/metropolis/particles/player
# Happens on at the player for metropolis particles

data modify storage link:temp temp set value {}
execute store result storage link:temp temp.x float 0.1 run random value 1100..3850
execute store result storage link:temp temp.z float 0.1 run random value -1000..2500


execute store result score random temp run random value 1..100
execute if score random temp matches ..10 at @s positioned ~ ~100 ~ run function patchwreck:regions/metropolis/particles/spawn with storage link:temp temp

# Flag
scoreboard players set inmetro temp 1
