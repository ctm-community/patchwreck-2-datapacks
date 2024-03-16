#Starts the game as the player

tp @s 1000 112 1000 0 0
effect give @s blindness 2 0 true
effect give @s slow_falling 4 0 true
gamemode survival @s[gamemode=adventure]
execute at @s run playsound minecraft:teleport player @s ~ ~ ~ 1 0.7
spawnpoint @a 1000 100 1000

advancement revoke @s only game:lobby/start
advancement revoke @s only game:lobby/start2

gamerule mobGriefing true


#recipes
recipe give @s *
recipe take @s minecraft:golden_pickaxe
recipe take @s minecraft:white_wool_from_string
recipe take @s minecraft:black_wool
recipe take @s minecraft:blue_wool
recipe take @s minecraft:brown_wool
recipe take @s minecraft:cyan_wool
recipe take @s minecraft:gray_wool
recipe take @s minecraft:green_wool
recipe take @s minecraft:light_blue_wool
recipe take @s minecraft:light_gray_wool
recipe take @s minecraft:lime_wool
recipe take @s minecraft:magenta_wool
recipe take @s minecraft:orange_wool
recipe take @s minecraft:pink_wool
recipe take @s minecraft:purple_wool
recipe take @s minecraft:red_wool
recipe take @s minecraft:white_wool
recipe take @s minecraft:yellow_wool
recipe take @s minecraft:black_dye
recipe take @s minecraft:blue_dye
recipe take @s minecraft:brown_dye
recipe take @s minecraft:cyan_dye
recipe take @s minecraft:gray_dye
recipe take @s minecraft:green_dye
recipe take @s minecraft:light_blue_dye
recipe take @s minecraft:light_gray_dye
recipe take @s minecraft:lime_dye
recipe take @s minecraft:magenta_dye
recipe take @s minecraft:orange_dye
recipe take @s minecraft:pink_dye
recipe take @s minecraft:purple_dye
recipe take @s minecraft:red_dye
recipe take @s minecraft:white_dye
recipe take @s minecraft:yellow_dye
recipe take @s minecraft:black_dye_from_wither_rose
recipe take @s minecraft:blue_dye_from_cornflower
recipe take @s minecraft:light_blue_dye_from_blue_orchid
recipe take @s minecraft:light_blue_dye_from_blue_white_dye
recipe take @s minecraft:light_gray_dye_from_azure_bluet
recipe take @s minecraft:light_gray_dye_from_black_white_dye
recipe take @s minecraft:light_gray_dye_from_gray_white_dye
recipe take @s minecraft:light_gray_dye_from_oxeye_daisy
recipe take @s minecraft:light_gray_dye_from_white_tulip
recipe take @s minecraft:lime_dye_from_smelting
recipe take @s minecraft:magenta_dye_from_allium
recipe take @s minecraft:magenta_dye_from_blue_red_pink
recipe take @s minecraft:magenta_dye_from_blue_red_white_dye
recipe take @s minecraft:magenta_dye_from_lilac
recipe take @s minecraft:magenta_dye_from_purple_and_pink
recipe take @s minecraft:orange_dye_from_red_yellow
recipe take @s minecraft:orange_dye_from_orange_tulip
recipe take @s minecraft:pink_dye_from_peony
recipe take @s minecraft:pink_dye_from_red_white_dye
recipe take @s minecraft:pink_dye_from_pink_tulip
recipe take @s minecraft:red_dye_from_beetroot
recipe take @s minecraft:red_dye_from_poppy
recipe take @s minecraft:red_dye_from_rose_bush
recipe take @s minecraft:red_dye_from_tulip
recipe take @s minecraft:red_dye_from_beetroot
recipe take @s minecraft:white_dye_from_lily_of_the_valley
recipe take @s minecraft:yellow_dye_from_dandelion
recipe take @s minecraft:yellow_dye_from_sunflower
recipe take @s minecraft:mushroom_stew
recipe take @s minecraft:rabbit_stew_from_brown_mushroom
recipe take @s minecraft:rabbit_stew_from_red_mushroom