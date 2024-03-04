#> manoloesmanolo:bloodbeet/summon_beet
# Convert Bloodthirsty Beets from the target's inventory into a zombie

data modify storage manoloesmanolo:storage entity.Pos set value [0.0d,0.0d,0.0d]
data modify storage manoloesmanolo:storage entity.Motion set value [0.0d, 0.0d, 0.0d]
data modify storage manoloesmanolo:storage entity.x set from entity @s Pos[0]
data modify storage manoloesmanolo:storage entity.y set from entity @s Pos[1]
data modify storage manoloesmanolo:storage entity.z set from entity @s Pos[2]

# Clear up to 8 beetroot to summon a Bloodthirsty Beet that will drop the amount of beets that were cleared
execute store result score $item_count patchwreck.variables run clear @s minecraft:beetroot{bloodbeet: 1b} 8
execute at @s positioned ~ ~512 ~ summon minecraft:zombie run function manoloesmanolo:bloodbeet/convert_beet with storage manoloesmanolo:storage entity
effect give @s minecraft:poison 5 1 true


