#> manoloesmanolo:bloodbeet/replace_beet
# Replace item in $(item_slot) with $(count) Bloodthirsty Beet(s)

$scoreboard players set $item_count patchwreck.variables $(count)
$loot replace entity @s $(item_slot) loot patchwreck:gothic/bloodthirsty_beet
