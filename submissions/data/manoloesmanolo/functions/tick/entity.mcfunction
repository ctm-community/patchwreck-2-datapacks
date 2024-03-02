#> manoloesmanolo:tick/entity
# Ticking function for Bloodbeet item entities

# Randomly animate Bloodbeet items
execute store result score $random bloodbeet.variables run random value 1..100
execute if score $random bloodbeet.variables matches ..50 as @s[tag=!bloodbeet.inanimate,nbt={Item: {tag: {bloodbeet: 1b}}}] run function manoloesmanolo:bloodbeet/animate_beet
execute if score $random bloodbeet.variables matches 51.. as @s[tag=!bloodbeet.inanimate,nbt={Item: {tag: {bloodbeet: 1b}}}] run tag @s add bloodbeet.inanimate

# Tag all entities after running checks so this function is not run more than once per entity
tag @s add bloodbeet.checked
