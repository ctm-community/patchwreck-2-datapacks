#> patchwreck:monument/credits_end

execute if score $credits_end patchwreck.timers matches ..795 run gamemode spectator @a[gamemode=!spectator]
execute if score $credits_end patchwreck.timers matches ..795 run execute in minecraft:overworld run teleport @a 949.0 120.0 916.0 5 0

execute if score $credits_end patchwreck.timers matches 0..10 positioned 949 120 916 run fillbiome ~-5 ~-5 ~-5 ~5 ~5 ~5 patchwreck:credits
execute if score $credits_end patchwreck.timers matches 0..10 run kill 056593f9-80af-4bd3-aa23-417e7d095410
execute if score $credits_end patchwreck.timers matches 10 run summon minecraft:text_display 945.5 100.5 920.5 {UUID: [I; 90543097, -2135995437, -1440530050, 2097763344], billboard: "vertical", teleport_duration: 20, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [1.5f, 1.5f, 1.5f]}, text: '[{"text":"- Compiled by -","color":"#8772DC","bold":true},{"text":"\\nCounter_Coffee\\nlink2012  \\nJevex  \\nCoffee_Cake  \\n\\n","color":"white","bold":false},{"text":"- Logo by -","color":"#8772DC","bold":true},{"text":"\\nCoffee_Cake \\n\\n","color":"white","bold":false},{"text":"- Made with Contributions from -","color":"#8772DC","bold":true},{"text":"\\nLylac \\nSlimeKing77777 \\nImSheol \\nsafeliquids \\nPhoraxe \\nEnderayo \\n1954PinaColada \\nmanoloesmanolo \\nCatsAreYe \\nA_Dumb_Bagel \\nCafeslayeur \\nUndrcoverCactus \\n@p \\nMatt_97 \\nLENb3 \\nSandurs \\nKyKyPy3Ka \\nCango \\nKembo \\nSaihoku Hiroppi  \\n\\n","color":"white","bold":false},{"text":"- Music and Ambience by -","color":"#8772DC","bold":true},{"text":"\\nKevin Macleod \\nLena Raine \\nQuillver \\nSound Diary \\nNEKHEN \\nSabulanis \\nlink2012  \\n\\n","color":"white","bold":false},{"text":"Thank you for playing!","color":"#8772DC","bold":true}]', background: 0}

execute if score $credits_end patchwreck.timers matches 600 run kill 056593f9-80af-4bd3-aa23-417e7d095410
execute if score $credits_end patchwreck.timers matches 600 run title @a times 40t 80t 60t
execute if score $credits_end patchwreck.timers matches 600 run title @a title {"text":" "}
execute if score $credits_end patchwreck.timers matches 600 run title @a subtitle {"text":""}

execute if score $credits_end patchwreck.timers matches 795 run teleport @a 1000 112 1000 0 0
execute if score $credits_end patchwreck.timers matches 795 run gamemode survival @a
execute if score $credits_end patchwreck.timers matches 796 run effect give @a minecraft:blindness 2 0 true
execute if score $credits_end patchwreck.timers matches 796 run effect give @a minecraft:slow_falling 4 0 true
execute if score $credits_end patchwreck.timers matches 796 run playsound minecraft:teleport ambient @a ~ ~ ~ 1 1
execute if score $credits_end patchwreck.timers matches 796 run particle flash ~ ~ ~ 0 0 0 0 1 force
execute if score $credits_end patchwreck.timers matches 796 run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 0.5 30

execute as 056593f9-80af-4bd3-aa23-417e7d095410 at @s run teleport @s ~ ~0.05 ~

execute if score $credits_end patchwreck.timers matches 0 run scoreboard players set $credits_end patchwreck.timers 1
