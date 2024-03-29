#> patchwreck:load/summon
# Summon game entities

# Marker entity for credits positioning
execute in minecraft:overworld run summon minecraft:item_display 1000 0 1000 {UUID: [I; -486704527, 1796030482, -1322868560, 565173450], view_range: 0f, teleport_duration: 10, Tags: ["camera"], item: {id: "minecraft:air", Count: 1b}, Rotation: [0f, 0f]}
execute in patchwreck:gothic run summon minecraft:item_display 100 0 100 {UUID: [I; -1391021754, 1617513160, -1185776694, -1526954475], view_range: 0f, teleport_duration: 10, Tags: ["camera"], item: {id: "minecraft:air", Count: 1b}, Rotation: [0f, 0f]}
execute in patchwreck:tomb run summon minecraft:item_display 100 0 100 {UUID: [I; -1731217196, 47402729, -1294842851, -2127192223], view_range: 0f, teleport_duration: 10, Tags: ["camera"], item: {id: "minecraft:air", Count: 1b}, Rotation: [0f, 0f]}
execute in patchwreck:wasteland run summon minecraft:item_display 100 0 100 {UUID: [I; 297230948, -1568585169, -1430015719, -730184558], view_range: 0f, teleport_duration: 10, Tags: ["camera"], item: {id: "minecraft:air", Count: 1b}, Rotation: [0f, 0f]}
execute in patchwreck:grove run summon minecraft:item_display 100 0 100 {UUID: [I; 1978184431, 1385383270, -1369760413, -1433376237], view_range: 0f, teleport_duration: 10, Tags: ["camera"], item: {id: "minecraft:air", Count: 1b}, Rotation: [0f, 0f]}
execute in patchwreck:metropolis run summon minecraft:item_display 100 0 100 {UUID: [I; -754562821, 623330287, -1524001685, -880552857], view_range: 0f, teleport_duration: 10, Tags: ["camera"], item: {id: "minecraft:air", Count: 1b}, Rotation: [0f, 0f]}

# Monument objective cases
# 0736387d-f4db-4e61-b5e2-31bbbc5651cc
summon minecraft:block_display 1000.5 105.5 1034.5 {UUID: [I; 120993917, -186954143, -1243467333, -1135193652], brightness: {sky: 10, block: 7}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.502f, -0.502f, -0.502f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:orange_stained_glass"}}
# 67ce5f06-0775-4c8b-a048-8d3acb03a8c7
summon minecraft:interaction 1000.5 105.0 1034.5 {UUID: [I; 1741577990, 125127819, -1605857990, -888952633]}

# be2d4ba7-3087-4abe-8eb2-59f0fff7b4d7
summon minecraft:block_display 998.5 105.5 1034.5 {UUID: [I; -1104327769, 814172862, -1900914192, -543529], brightness: {sky: 10, block: 7}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.502f, -0.502f, -0.502f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:yellow_stained_glass"}}
# ee2af211-da87-4d82-9f23-5142144abcda
summon minecraft:interaction 998.5 105.0 1034.5 {UUID: [I; -299175407, -628667006, -1625075390, 340442330]}

# 20d3417f-5b6b-4cf9-8122-44ad6d07d273
summon minecraft:block_display 996.5 105.5 1032.5 {UUID: [I; 550715775, 1533758713, -2128460627, 1829229171], brightness: {sky: 10, block: 7}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.502f, -0.502f, -0.502f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:lime_stained_glass"}}
# df4c1d76-15fb-4425-94ac-2549590e7357
summon minecraft:interaction 996.5 105.0 1032.5 {UUID: [I; -548659850, 368788517, -1800657591, 1494119255]}

# 6d5c24a8-7431-4e15-8ff7-77b8e1208fc0
summon minecraft:block_display 995.5 105.5 1030.5 {UUID: [I; 1834755240, 1949388309, -1879607368, -517959744], brightness: {sky: 10, block: 7}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.502f, -0.502f, -0.502f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:cyan_stained_glass"}}
# d4af180f-c39f-4ea6-8a77-218f8f86602a
summon minecraft:interaction 995.5 105.0 1030.5 {UUID: [I; -726722545, -1012969818, -1971904113, -1887018966]}

# 5c0d4d91-7034-46a1-9ea5-ccd4ad0c5174
summon minecraft:block_display 995.5 105.5 1028.5 {UUID: [I; 1544375697, 1882474145, -1633301292, -1391701644], brightness: {sky: 10, block: 7}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.502f, -0.502f, -0.502f], scale: [1.0f, 1.0f, 1.0f]}, block_state: {Name: "minecraft:purple_stained_glass"}}
# 9d32f98b-0c8f-4790-bbfa-6213582f2552
summon minecraft:interaction 995.5 105.0 1028.5 {UUID: [I; -1657603701, 210716560, -1141218797, 1479484754]}

# Grim and Gothic graveyard gravel
execute in patchwreck:gothic positioned 100.0 -0.8 96.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -1602182666, 1650084308, -1855190540, 82633513], block_state: {Name: "minecraft:suspicious_gravel"}}
execute in patchwreck:gothic positioned 99.0 -0.8 96.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 976465665, -317307164, -1730926381, -239428739], block_state: {Name: "minecraft:suspicious_gravel"}}
execute in patchwreck:gothic positioned 100.0 -0.8 97.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -322615351, 648366722, -1518628528, 728256545], block_state: {Name: "minecraft:suspicious_gravel"}}
execute in patchwreck:gothic positioned 99.0 -0.8 97.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 1431390347, -1891548895, -1404529502, 295407826], block_state: {Name: "minecraft:suspicious_gravel"}}
execute in patchwreck:gothic positioned 100.0 -0.8 98.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -1197042128, -1113897964, -2117336609, -1961111294], block_state: {Name: "minecraft:suspicious_gravel"}}
execute in patchwreck:gothic positioned 99.0 -0.8 98.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -331830717, -698596405, -1745148202, 1564052711], block_state: {Name: "minecraft:suspicious_gravel"}}
