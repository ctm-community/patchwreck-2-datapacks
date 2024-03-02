#> manoloesmanolo:bloodbeet/animate_beet
# Convert a Bloodthirsty Beet item into a zombie

data modify storage manoloesmanolo:storage entity.Motion set from entity @s Motion
data modify storage manoloesmanolo:storage entity.Pos set from entity @s Pos
execute store result score $item_count patchwreck.variables run data get entity @s Item.Count
execute at @s positioned ~ ~512 ~ summon minecraft:zombie run function manoloesmanolo:bloodbeet/convert_beet
kill @s[type=minecraft:item]
