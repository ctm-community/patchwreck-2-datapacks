#> enderayo:hyperdrift_helmet/replace_item
# Replace an item in $(Slot) with a Hyperdrift helmet

scoreboard players set $item_count patchwreck.variables 1
$execute unless score $item_slot enderayo.variables matches -106 run loot replace entity @s container.$(Slot) loot patchwreck:metropolis/hyperdrift_helmet
