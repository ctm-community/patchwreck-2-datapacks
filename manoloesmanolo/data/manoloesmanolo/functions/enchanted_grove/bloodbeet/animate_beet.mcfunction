#> manoloesmanolo:enchanted_grove/bloodbeet/animate_beet
# Convert a Bloodthirsty Beet item into a zombie

data modify storage manoloesmanolo:macro entity.ArmorItems set value [{}, {}, {}, {}]
data modify storage manoloesmanolo:macro entity.ArmorItems[3] set from entity @s Item
data modify storage manoloesmanolo:macro entity.Motion set from entity @s Motion
data modify storage manoloesmanolo:macro entity.Pos set from entity @s Pos
execute at @s positioned ~ ~512 ~ summon minecraft:zombie run function manoloesmanolo:enchanted_grove/bloodbeet/convert_beet
kill @s[type=minecraft:item]
