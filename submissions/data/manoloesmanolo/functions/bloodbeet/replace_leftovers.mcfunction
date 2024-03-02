#> manoloesmanolo:bloodbeet/replace_leftovers
# Replace item in $(item_slot) with 1 Bloodthirsty Beet Leftover

scoreboard players set $item_count patchwreck.variables 1
$loot replace entity @s $(item_slot) loot patchwreck:grove/bloodthirsty_beet_leftovers
