#> manoloesmanolo:bloodbeet/count_beets
# Count number of beets and leftovers in the player's inventory, this is actually very expensive

execute store result score @s bloodbeet.total_count run clear @s minecraft:beetroot{bloodbeet: 1b} 0
execute store result score $bloodleftover bloodbeet.variables run clear @s minecraft:red_dye{bloodleftover: 1b} 0
scoreboard players operation @s bloodbeet.total_count += $bloodleftover bloodbeet.variables
