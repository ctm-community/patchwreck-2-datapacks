#Happens when a raycast bumps into a spawner
execute unless entity 38e349da-d05c-47c9-85c5-dad3300233dc run scoreboard players set setting spawner_tweaker 4
execute unless entity 38e349da-d05c-47c9-85c5-dad3300233dc run tellraw @s {"text":"Spawner marked. Left or Right click to tweak. Crouch+click to change element being tweaked.","color":"white","bold":false,"italic":false}
execute unless entity 38e349da-d05c-47c9-85c5-dad3300233dc align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {UUID:[I;954419674,-799258679,-2050630957,805450716],Glowing:1b,width:100f,height:100f,interpolation_duration:5,teleport_duration:5,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass",Count:1b}}
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity 38e349da-d05c-47c9-85c5-dad3300233dc run tp 38e349da-d05c-47c9-85c5-dad3300233dc ~ ~ ~
team join spawner_tweaker_green 38e349da-d05c-47c9-85c5-dad3300233dc


#Extra display for spawner range
execute unless entity 4a3f09af-b376-485e-a73a-a4566af88748 run summon block_display ~ ~ ~ {UUID:[I;1245645231,-1284093858,-1489329066,1794672456],view_range:100f,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},block_state:{Name:"minecraft:red_stained_glass"}}
ride 4a3f09af-b376-485e-a73a-a4566af88748 mount 38e349da-d05c-47c9-85c5-dad3300233dc

#Player interaction
execute unless entity 267e6e48-4a17-42b3-bf89-dd2b69b0818d run summon interaction ~ ~ ~ {width:0.59f,height:1.79f,response:0b,Tags:["spawner_interaction"],UUID:[I;645819976,1243038387,-1081483989,1773175181]}

#End raycasting
scoreboard players set n temp -999