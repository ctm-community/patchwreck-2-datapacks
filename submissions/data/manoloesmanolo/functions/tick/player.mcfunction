#> manoloesmanolo:tick/player
# Run player-ticking operations

# If player has >16 beets in their inventory, there's a 2% chance to consume 8 beets and summon an animated Bloodthirsty Beet every tick that they're eating
execute store result score @s bloodbeet.total_count run clear @s minecraft:beetroot{bloodbeet: 1b} 0
execute store result score $random bloodbeet.variables run random value 1..100
execute if score $random bloodbeet.variables matches ..2 if score @s bloodbeet.eating matches 1.. unless score @s bloodbeet.total_count matches ..16 run function manoloesmanolo:enchanted_grove/bloodbeet/summon_beet

# Regenerate one beet for each kill before calculating beet consumption
function manoloesmanolo:enchanted_grove/bloodbeet/count_beets
execute if score @s bloodbeet.kills matches 1.. store result storage manoloesmanolo:macro variables.count byte 1 run scoreboard players get @s bloodbeet.kills
execute if score @s bloodbeet.kills matches 1.. if score @s bloodbeet.total_count matches 1.. run function manoloesmanolo:enchanted_grove/bloodbeet/regrow_beets with storage manoloesmanolo:macro variables
scoreboard players set @s bloodbeet.kills 0

# Since mainhand has priority, remove duplicate eating count and revoke offhand advancement if both were granted
scoreboard players remove @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_mainhand=true,manoloesmanolo:enchanted_grove/bloodbeet/eating_offhand=true}] bloodbeet.eating 1
advancement revoke @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_mainhand=true,manoloesmanolo:enchanted_grove/bloodbeet/eating_offhand=true}] only manoloesmanolo:enchanted_grove/bloodbeet/eating_offhand

# If a player has either consumed a Bloodthirsty Beet or has been eating one for 16 ticks, run the eaten reward function
# NOTE: It normally takes 32 ticks to eat one beetroot, so this allows them to be eaten 50% faster
execute if score @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_mainhand=true}] bloodbeet.eaten matches 1.. run function manoloesmanolo:enchanted_grove/bloodbeet/eaten {consume: 0b, slot: 0b}
execute if score @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_mainhand=true}] bloodbeet.eating matches 16.. run function manoloesmanolo:enchanted_grove/bloodbeet/eaten {consume: 1b, slot: 0b}
execute if score @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_offhand=true}] bloodbeet.eaten matches 1.. run function manoloesmanolo:enchanted_grove/bloodbeet/eaten {consume: 0b, slot: -106b}
execute if score @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_offhand=true}] bloodbeet.eating matches 16.. run function manoloesmanolo:enchanted_grove/bloodbeet/eaten {consume: 1b, slot: -106b}
scoreboard players set @s bloodbeet.eaten 0

# If the player does not have the Bloodthirsty Beet eating advancement, reset the eating tick counter
execute if entity @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_mainhand=false,manoloesmanolo:enchanted_grove/bloodbeet/eating_offhand=false}] run scoreboard players set @s bloodbeet.eating 0

# Revoke the eating detection advancement after all conditions have been checked
advancement revoke @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_mainhand=true}] only manoloesmanolo:enchanted_grove/bloodbeet/eating_mainhand
advancement revoke @s[advancements={manoloesmanolo:enchanted_grove/bloodbeet/eating_offhand=true}] only manoloesmanolo:enchanted_grove/bloodbeet/eating_offhand