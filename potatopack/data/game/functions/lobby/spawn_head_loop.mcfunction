#Spawns credits heads

$summon interaction ~ ~ ~ {width:1f,height:3f,Tags:["lobby_display","credits_interaction"],Passengers:[{id:"minecraft:item_display",Tags:["lobby_display","credits_head"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",Tags:["lobby_display","credits_text"],Passengers:[{id:"minecraft:marker",Tags:["lobby_display","credits_marker"]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},text:'{"translate":"credits.$(name)","color":"gray","italic":false}',background:16711680}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"$(ign)"}}}]}
data modify entity @e[distance=..1,limit=1,sort=nearest,type=marker,tag=lobby_display] data set from storage patechwreck:credits players[0]
execute as @e[distance=..1,limit=1,sort=nearest,type=item_display,tag=lobby_display] facing ^ ^ ^1 run tp @s ~ ~ ~ ~ ~
execute as @e[distance=..1,limit=1,sort=nearest,type=text_display,tag=lobby_display] facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
tp @e[distance=..1,limit=1,sort=nearest,type=interaction,tag=lobby_display] ^ ^ ^14

#Loop
scoreboard players remove n temp 1
data remove storage patechwreck:credits players[0]
execute if score n temp matches 10 rotated -134 ~ run function game:lobby/spawn_head_loop with storage patechwreck:credits players[0]
execute if score n temp matches 1.. unless score n temp matches 10 rotated ~11 ~ run function game:lobby/spawn_head_loop with storage patechwreck:credits players[0]
