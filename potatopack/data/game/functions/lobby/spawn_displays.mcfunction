#spawns all lobby displays

#Kill
kill @e[tag=lobby_display]

#Spawn
summon text_display 4 102 14.99 {billboard:"fixed",interpolation_duration:2,teleport_duration:2,line_width:130,Rotation:[-180F,0F],Tags:["lobby_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠ If you are reading this, please install the resource pack, Disconnect, and Reconnect ⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠","color":"dark_red"}',background:1677721600}
summon text_display -4 102 14.99 {billboard:"fixed",interpolation_duration:2,teleport_duration:2,line_width:200,Rotation:[-180F,0F],Tags:["lobby_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"lobby.settings","color":"dark_red"}',background:1677721600}


#Interactions
#Difficulty, interaction 3023b61d-3aa7-44e5-b0d7-b88e01c4dbff text d452d5a1-6012-4398-badb-cfe703efae74

summon interaction -1 100 14.99 {width:1f,height:3f,Rotation:[-180F,0F],Tags:["lobby_display","difficulty"],UUID:[I;807646749,984040677,-1328039794,29678591],Passengers:[{id:"minecraft:text_display",billboard:"fixed",UUID:[I;-732768863,1611809688,-1159999513,66039412],interpolation_duration:2,teleport_duration:2,Rotation:[-180F,0F],Tags:["lobby_display","difficulty"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":"Difficulty: ","italic":false}',background:0}]}