#> manoloesmanolo:tick/entity
# Ticking function for Bloodbeet item entities

# Randomly animate Bloodbeet items
execute store result score $random bloodbeet.variables run random value 1..100
execute if score $random bloodbeet.variables matches ..35 as @s[tag=!bloodbeet.inanimate,nbt={Item: {tag: {bloodbeet: 1b}}}] run function manoloesmanolo:bloodbeet/animate_beet
execute if score $random bloodbeet.variables matches 36.. as @s[tag=!bloodbeet.inanimate,nbt={Item: {tag: {bloodbeet: 1b}}}] run tag @s add bloodbeet.inanimate

# Check for item frames
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[dx=0,dy=0,dz=0,type=#minecraft:item_frames,nbt=!{Item:{}},nbt={Invisible:1b}]

# Tag all entities after running checks so this function is not run more than once per entity
tag @s add bloodbeet.checked
