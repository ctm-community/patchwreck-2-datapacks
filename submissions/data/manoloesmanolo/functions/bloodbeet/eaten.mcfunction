#> manoloesmanolo:bloodbeet/eaten
# Simulate player consumption of $(consume) Bloodthirsty Beet(s) from $(slot)

# Set which slot should be replaced
$scoreboard players set @s bloodbeet.item_slot $(slot)
execute if score @s bloodbeet.item_slot matches 0 run data modify storage manoloesmanolo:storage bloodbeet.item_slot set value "weapon.mainhand"
execute if score @s bloodbeet.item_slot matches -106 run data modify storage manoloesmanolo:storage bloodbeet.item_slot set value "weapon.offhand"

# Determine what the stack count should be after consuming a beet
execute if score @s bloodbeet.item_slot matches 0 store result score @s bloodbeet.stack_count run data get entity @s SelectedItem.Count
execute if score @s bloodbeet.item_slot matches -106 store result score @s bloodbeet.stack_count run data get entity @s Inventory[{Slot: -106b}].Count
$scoreboard players remove @s bloodbeet.stack_count $(consume)
execute store result storage manoloesmanolo:storage bloodbeet.count byte 1 run scoreboard players get @s bloodbeet.stack_count

# If stack count is 0, replace beet with leftovers, otherwise decrease stack by 1
execute if score @s bloodbeet.stack_count matches ..0 run function manoloesmanolo:bloodbeet/replace_leftovers with storage manoloesmanolo:storage bloodbeet
execute if score @s bloodbeet.stack_count matches 1.. run function manoloesmanolo:bloodbeet/replace_beet with storage manoloesmanolo:storage bloodbeet

# Simulate item consumption and give effects
playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 1
effect give @s minecraft:saturation 3 0 true

# Reset eating scoreboards to avoid triggering eaten event twice in one tick
scoreboard players set @s bloodbeet.eaten 0
scoreboard players set @s bloodbeet.eating 0
