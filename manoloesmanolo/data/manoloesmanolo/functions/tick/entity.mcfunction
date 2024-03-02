#> manoloesmanolo:tick/entity

execute store result score $random bloodbeet.variables run random value 1..100
execute if score $random bloodbeet.variables matches ..50 as @s[type=minecraft:item,tag=!bloodbeet.inanimate,nbt={Item: {tag: {bloodbeet: 1b}}}] run function manoloesmanolo:enchanted_grove/bloodbeet/animate_beet
execute if score $random bloodbeet.variables matches 51.. as @s[type=minecraft:item,tag=!bloodbeet.inanimate,nbt={Item: {tag: {bloodbeet: 1b}}}] run tag @s add bloodbeet.inanimate

tag @s add bloodbeet_check