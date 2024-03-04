#> manoloesmanolo:bloodbeet/regrow_beets
# Give $(count) Bloodthirsty Beets to the target by replacing up to ($count) Bloodthirsty Beet Leftovers

# Replace leftovers with beets
$clear @s minecraft:red_dye{bloodleftover: 1b} $(count)
$scoreboard players set $item_count patchwreck.variables $(count)
loot give @s loot patchwreck:gothic/bloodthirsty_beet

# Play composter sound to indicate that beets have regrown
playsound minecraft:block.composter.empty player @s ~ ~ ~ 1 1 1
