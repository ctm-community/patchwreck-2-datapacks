#spawns all lobby displays

#Kill
kill @e[tag=lobby_display]

#Spawn
summon text_display 4 101 14.99 {billboard:"fixed",interpolation_duration:2,teleport_duration:2,line_width:130,Rotation:[-180F,0F],Tags:["lobby_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠ If you are reading this, please install the resource pack, Disconnect, and Reconnect ⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠","color":"dark_red"}',background:1677721600}
summon text_display -4 101 14.99 {billboard:"fixed",interpolation_duration:2,teleport_duration:2,line_width:200,Rotation:[-180F,0F],Tags:["lobby_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"lobby.settings","color":"dark_red"}',background:1677721600}

#Extra credits
summon text_display -6 100.2 -9.99 {billboard:"fixed",interpolation_duration:2,teleport_duration:2,line_width:140,Tags:["lobby_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},text:'[{"translate":"extra_cred.1.1","color":"dark_red"},{"translate":"game.functions.lobby.spawn_displays.1"},{"translate":"extra_cred.1.2"},{"translate":"game.functions.lobby.spawn_displays.1"},{"translate":"extra_cred.1.3"}]',background:0}
summon text_display -5 100.2 -9.99 {billboard:"fixed",interpolation_duration:2,teleport_duration:2,line_width:140,Tags:["lobby_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},text:'[{"translate":"extra_cred.2.1","color":"dark_red"},{"translate":"game.functions.lobby.spawn_displays.1"},{"translate":"extra_cred.2.2"},{"translate":"game.functions.lobby.spawn_displays.1"},{"translate":"extra_cred.2.3"}]',background:0}
summon text_display -4 100.2 -9.99 {billboard:"fixed",interpolation_duration:2,teleport_duration:2,line_width:140,Tags:["lobby_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},text:'[{"translate":"extra_cred.3.1","color":"dark_red"},{"translate":"game.functions.lobby.spawn_displays.1"},{"translate":"extra_cred.3.2"},{"translate":"game.functions.lobby.spawn_displays.1"},{"translate":"extra_cred.3.3"}]',background:0}

summon text_display 1 103.5 -11.5 {billboard:"fixed",interpolation_duration:2,teleport_duration:2,text_opacity:-70,Tags:["lobby_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},text:'[{"translate":"entity.text_display.12.text.1","color":"white","italic":false},{"translate":"entity.text_display.12.text.2","italic":true}]',background:0}

#Interactions
#Difficulty, interaction 3023b61d-3aa7-44e5-b0d7-b88e01c4dbff text d452d5a1-6012-4398-badb-cfe703efae74
summon interaction -1 100 14.99 {width:1f,height:3f,Rotation:[-180F,0F],Tags:["lobby_display","difficulty"],UUID:[I;807646749,984040677,-1328039794,29678591],Passengers:[{id:"minecraft:text_display",billboard:"fixed",UUID:[I;-732768863,1611809688,-1159999513,66039412],interpolation_duration:2,teleport_duration:2,Rotation:[-180F,0F],Tags:["lobby_display","difficulty"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"game.functions.lobby.spawn_displays.9","italic":false}',background:0}]}
data merge entity d452d5a1-6012-4398-badb-cfe703efae74 {text:'[{"translate":"entity.text_display.5.text.1","color":"gray"},{"translate":"entity.text_display.5.text.2","color":"yellow"}]'}

#Difficulty, interaction 2d5e664b-0e80-48c5-9367-beb453330b46 text 68f23e7d-d3d6-41bb-8433-b1463de2bb79
summon interaction 1 100 14.99 {width:1f,height:3f,Rotation:[-180F,0F],Tags:["lobby_display","startgame"],UUID:[I;761161291,243288261,-1821917516,1395854150],Passengers:[{id:"minecraft:text_display",billboard:"fixed",UUID:[I;1760706173,-740933189,-2076987066,1038269305],interpolation_duration:2,teleport_duration:2,Rotation:[-180F,0F],Tags:["lobby_display","difficulty"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"<----","italic":false}',background:0}]}

#Credit heads
data modify storage patechwreck:credits players set value [{ign:"Counter_Coffee",name:"Counter_Coffee",big:5b,small:4b,mobs:0b,items:0b},{ign:"Coffee_Cake_",name:"Coffee_Cake",big:5b,small:5b,mobs:0b,items:0b},{ign:"LylacX",name:"Lylac",big:5b,small:5b,mobs:0b,items:0b},{ign:"SlimeKing77777",name:"SlimeKing77777",big:0b,small:0b,mobs:5b,items:5b},{ign:"imsheol",name:"ImSheol",big:4b,small:2b,mobs:2b,items:3b},{ign:"safeliquids",name:"safeliquids",big:4b,small:3b,mobs:4b,items:4b},{ign:"Phoraxe",name:"Phoraxe",big:5b,small:2b,mobs:0b,items:0b},{ign:"Enderayo",name:"Enderayo",big:5b,small:5b,mobs:5b,items:5b},{ign:"1954PinaColada",name:"1954PinaColada",big:4b,small:2b,mobs:3b,items:5b},{ign:"manoloesmanolo",name:"manoloesmanolo",big:2b,small:1b,mobs:1b,items:1b},{ign:"CatsAreYe",name:"CatsAreYe",big:2b,small:2b,mobs:0b,items:0b},{ign:"A_Dumb_Bagel",name:"A_Dumb_Bagel",big:2b,small:0b,mobs:0b,items:0b},{ign:"Cafeslayeur",name:"Cafeslayeur",big:5b,small:5b,mobs:3b,items:5b},{ign:"UndrcoverCactus",name:"UndrcoverCactus",big:1b,small:1b,mobs:0b,items:0b},{ign:" @p ",name:"@p",big:5b,small:5b,mobs:0b,items:0b},{ign:"Matt_97",name:"Matt_97",big:2b,small:1b,mobs:5b,items:1b},{ign:"LENb3",name:"LENb3",big:0b,small:0b,mobs:0b,items:1b},{ign:"Sandur_",name:"Sandurs",big:1b,small:0b,mobs:0b,items:0b},{ign:"qqru3ka",name:"KyKyPy3Ka",big:5b,small:5b,mobs:0b,items:3b},{ign:"saihoku_hiroppi",name:"Cango, Kembo, Saihoku Hiroppi",big:2b,small:1b,mobs:0b,items:0b},{}]
scoreboard players set n temp 20
execute positioned 0 100 0 rotated 35 0 run function game:lobby/spawn_head_loop with storage patechwreck:credits players[0]


#Broken because of @p
#data modify storage patechwreck:credits players set value [{ign:"Counter_Coffee",name:"Counter_Coffee",big:5b,small:4b,mobs:0b,items:0b},{ign:"Coffee_Cake_",name:"Coffee_Cake",big:5b,small:5b,mobs:0b,items:0b},{ign:"LylacX",name:"Lylac",big:5b,small:5b,mobs:0b,items:0b},{ign:"SlimeKing77777",name:"SlimeKing77777",big:0b,small:0b,mobs:5b,items:5b},{ign:"ImSheol",name:"ImSheol",big:4b,small:2b,mobs:2b,items:3b},{ign:"safeliquids",name:"safeliquids",big:4b,small:3b,mobs:4b,items:4b},{ign:"Phoraxe",name:"Phoraxe",big:5b,small:2b,mobs:0b,items:0b},{ign:"Enderayo",name:"Enderayo",big:5b,small:5b,mobs:5b,items:5b},{ign:"1954PinaColada",name:"1954PinaColada",big:4b,small:2b,mobs:3b,items:5b},{ign:"manoloesmanolo",name:"manoloesmanolo",big:2b,small:1b,mobs:1b,items:1b},{ign:"CatsAreYe",name:"CatsAreYe",big:2b,small:2b,mobs:0b,items:0b},{ign:"A_Dumb_Bagel",name:"A_Dumb_Bagel",big:2b,small:0b,mobs:0b,items:0b},{ign:"Cafeslayeur",name:"Cafeslayeur",big:5b,small:5b,mobs:3b,items:5b},{ign:"UndrcoverCactus",name:"UndrcoverCactus",big:1b,small:1b,mobs:0b,items:0b},{ign:"@p",name:"@p",big:5b,small:5b,mobs:0b,items:0b},{ign:"Matt_97",name:"Matt_97",big:2b,small:1b,mobs:5b,items:1b},{ign:"LENb3",name:"LENb3",big:0b,small:0b,mobs:0b,items:1b},{ign:"Sandurs",name:"Sandurs",big:1b,small:0b,mobs:0b,items:0b},{ign:"qqru3ka",name:"KyKyPy3Ka",big:5b,small:5b,mobs:0b,items:3b},{ign:"NotCango",name:"Cango, Kembo, Saihoku Hiroppi",big:2b,small:1b,mobs:0b,items:0b},{}]
