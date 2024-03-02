# Grouped @e
execute as @e[type=!player] run function enderayo:grouped_at_e

# Player branch, honestly, not even worth the effort... this code is so horribly unoptimized but I don't want to spend hours fixing it
#execute as @a at @s run function enderayo:player

# Demononicon
execute as @a[nbt={Inventory:[{tag:{Demonomicon:1b}}]}] run scoreboard players enable @s enderayo.demonomicon
execute as @a[scores={enderayo.demonomicon=1..}] if score .cd enderayo.demonomicon matches 0 at @s run function enderayo:items/demonomicon
execute as @a[scores={enderayo.demonomicon=1..}] if score .cd enderayo.demonomicon matches 1.. at @s run title @s actionbar {"text":"Demonomicon's ability is on cooldown.","color":"gray","bold":false,"italic":false}
execute if score .cd enderayo.demonomicon matches 1.. run scoreboard players remove .cd enderayo.demonomicon 1
execute as @a[nbt={Inventory:[{tag:{Demonomicon:1b}}]}] if score .cd enderayo.demonomicon matches 1 run title @s actionbar {"text":"Demonomicon's ability is Ready !","color":"#A10000","bold":false,"italic":false}
execute as @a[scores={enderayo.demonomicon=1..}] run scoreboard players set @s enderayo.demonomicon 0

execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=!player,distance=..5.5] add enderayo.incircle
execute as 00000000-0001-44ef-0000-00000000002c at @s run tag @e[type=!player,distance=5.51..] remove enderayo.incircle

# Hyperdrift
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Hyperdrift:1b}}]},nbt=!{Inventory:[{Slot:103b,tag:{Lightblue:1b}}]},nbt=!{Inventory:[{Slot:103b,tag:{Magenta:1b}}]}] run item replace entity @s armor.head with light_blue_stained_glass{display:{Name:'[{"text":"Hyper","color":"#F238FF","bold":true,"italic":false},{"text":"drift ","color":"#FF8A14","bold":true,"italic":false},{"text":"Helmet","color":"#0AA5FF","bold":true,"italic":false}]',Lore:['{"text":"When worn, cycle between two states :","color":"gray","bold":false,"italic":false}','[{"text":"•","color":"aqua","bold":false,"italic":false},{"text":" +3 armor","color":"gray","bold":false,"italic":false}]','[{"text":"•","color":"#FF05B4","bold":false,"italic":false},{"text":" +3 damage & -3 armor","color":"gray","bold":false,"italic":false}]']},HideFlags:5,Hyperdrift:1b,Lightblue:1b,Enchantments:[{id:"minecraft:silk_touch",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;622958059,-1765456493,-1580124987,-2006602031],Slot:"head"}]} 1
execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Hyperdrift:1b}}]},nbt={Inventory:[{tag:{Hyperdrift:1b,Lightblue:1b}}]}] run give @s iron_helmet{display:{Name:'[{"text":"Hyper","color":"#F238FF","bold":true,"italic":false},{"text":"drift ","color":"#FF8A14","bold":true,"italic":false},{"text":"Helmet","color":"#0AA5FF","bold":true,"italic":false}]',Lore:['{"text":"When worn, cycle between two states :","color":"gray","bold":false,"italic":false}','[{"text":"•","color":"aqua","bold":false,"italic":false},{"text":" +3 armor","color":"gray","bold":false,"italic":false}]','[{"text":"•","color":"#FF05B4","bold":false,"italic":false},{"text":" +3 damage & -3 armor","color":"gray","bold":false,"italic":false}]']},HideFlags:7,Unbreakable:1b,Hyperdrift:1b,Enchantments:[{id:"minecraft:silk_touch",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1610460575,1494173373,-1600987168,-1598109680],Slot:"head"}]} 1
execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Hyperdrift:1b}}]},nbt={Inventory:[{tag:{Hyperdrift:1b,Magenta:1b}}]}] run give @s iron_helmet{display:{Name:'[{"text":"Hyper","color":"#F238FF","bold":true,"italic":false},{"text":"drift ","color":"#FF8A14","bold":true,"italic":false},{"text":"Helmet","color":"#0AA5FF","bold":true,"italic":false}]',Lore:['{"text":"When worn, cycle between two states :","color":"gray","bold":false,"italic":false}','[{"text":"•","color":"aqua","bold":false,"italic":false},{"text":" +3 armor","color":"gray","bold":false,"italic":false}]','[{"text":"•","color":"#FF05B4","bold":false,"italic":false},{"text":" +3 damage & -3 armor","color":"gray","bold":false,"italic":false}]']},HideFlags:7,Unbreakable:1b,Hyperdrift:1b,Enchantments:[{id:"minecraft:silk_touch",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1610460575,1494173373,-1600987168,-1598109680],Slot:"head"}]} 1
execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Hyperdrift:1b}}]},nbt={Inventory:[{tag:{Hyperdrift:1b}}]}] run clear @s light_blue_stained_glass{Lightblue:1b} 1
execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Hyperdrift:1b}}]},nbt={Inventory:[{tag:{Hyperdrift:1b}}]}] run clear @s magenta_stained_glass{Magenta:1b} 1

# Ghoulguts
execute as @a[scores={enderayo.hunger=1..}] run effect clear @s hunger
execute as @a[scores={enderayo.hunger=1..}] run scoreboard players set @s enderayo.hunger 0

# Pixie Bucket
execute as @a[nbt={SelectedItem:{id:"minecraft:axolotl_bucket",tag:{display:{Name:'{"text":"Lil\' Pixie","color":"#FF80C3","bold":true}'}}}}] run item replace entity @s weapon.mainhand with axolotl_bucket{display:{Name:'{"text":"Bucket of Pixie","color":"#FF5CD3","bold":true,"italic":false}',Lore:['{"text":"Contains an axolotl that gives","color":"gray","bold":false,"italic":false}','{"text":"regeneration I to nearby players.","color":"gray","bold":false,"italic":false}']},EntityTag:{Invulnerable:1b,UUID:[I;351684,97982,186684,83881],CustomNameVisible:1b,Variant:0,Tags:["enderayo.pixie"],CustomName:'{"text":"Lil\' Pixie","color":"#FF80C3","bold":true}'}} 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:axolotl_bucket",tag:{display:{Name:'{"text":"Lil\' Pixie","color":"#FF80C3","bold":true}'}}}]}] run item replace entity @s weapon.offhand with axolotl_bucket{display:{Name:'{"text":"Bucket of Pixie","color":"#FF5CD3","bold":true,"italic":false}',Lore:['{"text":"Contains an axolotl that gives","color":"gray","bold":false,"italic":false}','{"text":"regeneration I to nearby players.","color":"gray","bold":false,"italic":false}']},EntityTag:{Invulnerable:1b,UUID:[I;351684,97982,186684,83881],CustomNameVisible:1b,Variant:0,Tags:["enderayo.pixie"],CustomName:'{"text":"Lil\' Pixie","color":"#FF80C3","bold":true}'}} 1

# Blue-Eyes White Dragon
execute as @a[predicate=enderayo:is_sneaking,scores={enderayo.shieldability=1..},nbt={SelectedItem:{id:"minecraft:shield",tag:{enderayo.shieldability:1b}}}] if score .cd enderayo.shieldability matches 0 at @s run function enderayo:items/shieldability
execute as @a[predicate=enderayo:is_sneaking,scores={enderayo.shieldability=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{enderayo.shieldability:1b}}]}] if score .cd enderayo.shieldability matches 0 at @s run function enderayo:items/shieldability
execute as @a[scores={enderayo.shieldability=1..}] run scoreboard players set @s enderayo.shieldability 0
execute if score .cd enderayo.shieldability matches 1.. run scoreboard players remove .cd enderayo.shieldability 1
execute as @a[nbt={Inventory:[{id:"minecraft:shield",tag:{enderayo.shieldability:1b}}]}] if score .cd enderayo.shieldability matches 1 run title @s actionbar {"text":"Blue-Eyes White Dragon Ability Ready !","color":"#0FB7FF","bold":false,"italic":false}
