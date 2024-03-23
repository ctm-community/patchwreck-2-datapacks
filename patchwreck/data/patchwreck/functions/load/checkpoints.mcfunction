#> patchwreck:load/checkpoints

execute in minecraft:overworld run fillbiome 999 99 999 1001 101 1001 patchwreck:monument_checkpoint
execute in minecraft:overworld run setblock 1000 100 1000 minecraft:light[level=12,waterlogged=false]
execute in minecraft:overworld run setblock 1000 99 1000 minecraft:barrier[waterlogged=false]
execute in minecraft:overworld positioned 1000.0 99.0 1000.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 1971571645, -950516945, -1216676871, 1345689568]}
data merge entity 7583cbbd-c758-432f-b77a-fbf9503597e0 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"The Monument","color":"green"}', Pos: [1000.0d, 99.0d, 1000.0d], Rotation: [0.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 7583cbbd-c758-432f-b77a-fbf9503597e0 patchwreck.checkpoint 1
scoreboard players display name 7583cbbd-c758-432f-b77a-fbf9503597e0 patchwreck.checkpoint {"text":"The Monument","color":"green"}

execute in patchwreck:gothic run fillbiome 96 -1 96 98 1 98 patchwreck:gothic_checkpoint
execute in patchwreck:gothic run setblock 97 0 97 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:gothic run setblock 97 -1 97 minecraft:barrier[waterlogged=false]
execute in patchwreck:gothic positioned 97.0 -1.0 97.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -625716874, 1170885752, -1692394098, 621964967]}
data merge entity dab45176-45ca-4c78-9b20-1d8e25126ea7 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Grim and Gothic - Checkpoint 1","color":"green"}', Pos: [97.0d, -1.0d, 97.0d], Rotation: [-90.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set dab45176-45ca-4c78-9b20-1d8e25126ea7 patchwreck.checkpoint 11
scoreboard players display name dab45176-45ca-4c78-9b20-1d8e25126ea7 patchwreck.checkpoint {"text":"Grim and Gothic - Checkpoint 1","color":"green"}

execute in patchwreck:gothic run fillbiome 152 12 117 154 14 119 patchwreck:gothic_checkpoint
execute in patchwreck:gothic run setblock 153 13 118 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:gothic run setblock 153 12 118 minecraft:barrier[waterlogged=false]
execute in patchwreck:gothic positioned 153.0 12.0 118.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 810425662, 10768039, -1132824142, 1878006851]}
data merge entity 304e1d3e-00a4-4ea7-bc7a-79b26ff01c43 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Grim and Gothic - Checkpoint 2","color":"green"}', Pos: [153.0d, 12.0d, 118.0d], Rotation: [0.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 304e1d3e-00a4-4ea7-bc7a-79b26ff01c43 patchwreck.checkpoint 12
scoreboard players display name 304e1d3e-00a4-4ea7-bc7a-79b26ff01c43 patchwreck.checkpoint {"text":"Grim and Gothic - Checkpoint 2","color":"green"}

execute in patchwreck:gothic run fillbiome 217 41 125 219 43 127 patchwreck:gothic_checkpoint
execute in patchwreck:gothic run setblock 218 42 126 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:gothic run setblock 218 41 126 minecraft:barrier[waterlogged=false]
execute in patchwreck:gothic positioned 218.0 41.0 126.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -1531571519, -706458326, -2001636090, -445834947]}
data merge entity a4b612c1-d5e4-4d2a-88b1-7506e56d193d {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Grim and Gothic - Checkpoint 3","color":"green"}', Pos: [218.0d, 41.0d, 126.0d], Rotation: [90.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set a4b612c1-d5e4-4d2a-88b1-7506e56d193d patchwreck.checkpoint 13
scoreboard players display name a4b612c1-d5e4-4d2a-88b1-7506e56d193d patchwreck.checkpoint {"text":"Grim and Gothic - Checkpoint 3","color":"green"}

execute in patchwreck:gothic run fillbiome 155 48 42 157 50 44 patchwreck:gothic_checkpoint
execute in patchwreck:gothic run setblock 156 49 43 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:gothic run setblock 156 48 43 minecraft:barrier[waterlogged=false]
execute in patchwreck:gothic positioned 156.0 48.0 43.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 1196991209, -191805007, -1713139238, -751367808]}
data merge entity 4758a2e9-f491-49b1-99e3-91dad3370980 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Grim and Gothic - Checkpoint 4","color":"green"}', Pos: [156.0d, 48.0d, 43.0d], Rotation: [-90.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 4758a2e9-f491-49b1-99e3-91dad3370980 patchwreck.checkpoint 14
scoreboard players display name 4758a2e9-f491-49b1-99e3-91dad3370980 patchwreck.checkpoint {"text":"Grim and Gothic - Checkpoint 4","color":"green"}

execute in patchwreck:tomb run fillbiome 99 174 99 101 176 101 patchwreck:tomb_checkpoint
execute in patchwreck:tomb run setblock 100 175 100 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:tomb run setblock 100 174 100 minecraft:barrier[waterlogged=false]
execute in patchwreck:tomb positioned 100.0 174.0 100.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -1701841440, 1074482945, -1647006983, -81624508]}
data merge entity 9a8ff5e0-400b-4f01-9dd4-aaf9fb228244 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Egyptian Tomb - Checkpoint 1","color":"green"}', Pos: [100.0d, 174.0d, 100.0d], Rotation: [-90.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 9a8ff5e0-400b-4f01-9dd4-aaf9fb228244 patchwreck.checkpoint 21
scoreboard players display name 9a8ff5e0-400b-4f01-9dd4-aaf9fb228244 patchwreck.checkpoint {"text":"Egyptian Tomb - Checkpoint 1","color":"green"}

execute in patchwreck:tomb run fillbiome 100 102 47 102 104 49 patchwreck:tomb_checkpoint
execute in patchwreck:tomb run setblock 101 103 48 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:tomb run setblock 101 102 48 minecraft:barrier[waterlogged=false]
execute in patchwreck:tomb positioned 101.0 102.0 48.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 1715006347, -2117776862, -1824712974, -886593568]}
data merge entity 6638eb8b-81c5-4a22-933d-16f2cb27a7e0 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Egyptian Tomb - Checkpoint 2","color":"green"}', Pos: [101.0d, 102.0d, 48.0d], Rotation: [0.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 6638eb8b-81c5-4a22-933d-16f2cb27a7e0 patchwreck.checkpoint 22
scoreboard players display name 6638eb8b-81c5-4a22-933d-16f2cb27a7e0 patchwreck.checkpoint {"text":"Egyptian Tomb - Checkpoint 2","color":"green"}

execute in patchwreck:tomb run fillbiome 129 104 -4 131 106 -2 patchwreck:tomb_checkpoint
execute in patchwreck:tomb run setblock 130 105 -3 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:tomb run setblock 130 104 -3 minecraft:barrier[waterlogged=false]
execute in patchwreck:tomb positioned 130.0 104.0 -3.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 176634086, -1844099309, -1430330200, 1387007099]}
data merge entity 0a8738e6-9215-4713-aabe-e4a852ac0c7b {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Egyptian Tomb - Checkpoint 3","color":"green"}', Pos: [130.0d, 104.0d, -3.0d], Rotation: [0.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 0a8738e6-9215-4713-aabe-e4a852ac0c7b patchwreck.checkpoint 23
scoreboard players display name 0a8738e6-9215-4713-aabe-e4a852ac0c7b patchwreck.checkpoint {"text":"Egyptian Tomb - Checkpoint 3","color":"green"}

execute in patchwreck:tomb run fillbiome 97 26 5 99 28 7 patchwreck:tomb_checkpoint
execute in patchwreck:tomb run setblock 98 27 6 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:tomb run setblock 98 26 6 minecraft:barrier[waterlogged=false]
execute in patchwreck:tomb positioned 98.0 26.0 6.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -121832616, 1185630971, -1229855140, 1532442447]}
data merge entity f8bcfb58-46ab-4afb-b6b1-e65c5b57374f {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Egyptian Tomb - Checkpoint 4","color":"green"}', Pos: [98.0d, 26.0d, 6.0d], Rotation: [-90.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set f8bcfb58-46ab-4afb-b6b1-e65c5b57374f patchwreck.checkpoint 24
scoreboard players display name f8bcfb58-46ab-4afb-b6b1-e65c5b57374f patchwreck.checkpoint {"text":"Egyptian Tomb - Checkpoint 4","color":"green"}

execute in patchwreck:wasteland run fillbiome 99 -1 99 101 1 101 patchwreck:wasteland_checkpoint
execute in patchwreck:wasteland run setblock 100 0 100 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:wasteland run setblock 100 -1 100 minecraft:barrier[waterlogged=false]
execute in patchwreck:wasteland positioned 100.0 -1.0 100.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -689690911, 1620987819, -1640149334, 192384663]}
data merge entity d6e426e1-609e-4fab-9e3d-4eaa0b778e97 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Nuclear Wasteland - Checkpoint 1","color":"green"}', Pos: [100.0d, -1.0d, 100.0d], Rotation: [-90.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set d6e426e1-609e-4fab-9e3d-4eaa0b778e97 patchwreck.checkpoint 31
scoreboard players display name d6e426e1-609e-4fab-9e3d-4eaa0b778e97 patchwreck.checkpoint {"text":"Nuclear Wasteland - Checkpoint 1","color":"green"}

execute in patchwreck:wasteland run fillbiome 177 11 123 179 13 125 patchwreck:wasteland_checkpoint
execute in patchwreck:wasteland run setblock 178 12 124 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:wasteland run setblock 178 11 124 minecraft:barrier[waterlogged=false]
execute in patchwreck:wasteland positioned 178.0 11.0 124.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -1533781674, 451822447, -1372277483, 1483311142]}
data merge entity a4945956-1aee-436f-ae34-b51558698826 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Nuclear Wasteland - Checkpoint 2","color":"green"}', Pos: [178.0d, 11.0d, 124.0d], Rotation: [0.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set a4945956-1aee-436f-ae34-b51558698826 patchwreck.checkpoint 32
scoreboard players display name a4945956-1aee-436f-ae34-b51558698826 patchwreck.checkpoint {"text":"Nuclear Wasteland - Checkpoint 2","color":"green"}

execute in patchwreck:wasteland run fillbiome 127 2 178 129 4 180 patchwreck:wasteland_checkpoint
execute in patchwreck:wasteland run setblock 128 3 179 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:wasteland run setblock 128 2 179 minecraft:barrier[waterlogged=false]
execute in patchwreck:wasteland positioned 128.0 2.0 179.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 905247016, 384388974, -1555669249, -998164146]}
data merge entity 35f4f928-16e9-4f6e-a346-5effc481394e {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Nuclear Wasteland - Checkpoint 3","color":"green"}', Pos: [128.0d, 2.0d, 179.0d], Rotation: [-180.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 35f4f928-16e9-4f6e-a346-5effc481394e patchwreck.checkpoint 33
scoreboard players display name 35f4f928-16e9-4f6e-a346-5effc481394e patchwreck.checkpoint {"text":"Nuclear Wasteland - Checkpoint 3","color":"green"}

execute in patchwreck:wasteland run fillbiome 191 -33 180 193 -31 182 patchwreck:wasteland_checkpoint
execute in patchwreck:wasteland run setblock 192 -32 181 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:wasteland run setblock 192 -33 181 minecraft:barrier[waterlogged=false]
execute in patchwreck:wasteland positioned 192.0 -33.0 181.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 623671254, -624932326, -1873468976, -331137735]}
data merge entity 252c77d6-dac0-4a1a-9055-21d0ec433d39 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Nuclear Wasteland - Checkpoint 4","color":"green"}', Pos: [192.0d, -33.0d, 181.0d], Rotation: [90.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 252c77d6-dac0-4a1a-9055-21d0ec433d39 patchwreck.checkpoint 34
scoreboard players display name 252c77d6-dac0-4a1a-9055-21d0ec433d39 patchwreck.checkpoint {"text":"Nuclear Wasteland - Checkpoint 4","color":"green"}

execute in patchwreck:grove run fillbiome 99 99 99 101 101 101 patchwreck:grove_checkpoint
execute in patchwreck:grove run setblock 100 100 100 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:grove run setblock 100 99 100 minecraft:barrier[waterlogged=false]
execute in patchwreck:grove positioned 100.0 99.0 100.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -324346924, -340114685, -1860126046, 1479033083]}
data merge entity ecaadbd4-ebba-4303-9120-baa2582840fb {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Enchanted Grove - Checkpoint 1","color":"green"}', Pos: [100.0d, 99.0d, 100.0d], Rotation: [-180.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set ecaadbd4-ebba-4303-9120-baa2582840fb patchwreck.checkpoint 41
scoreboard players display name ecaadbd4-ebba-4303-9120-baa2582840fb patchwreck.checkpoint {"text":"Enchanted Grove - Checkpoint 1","color":"green"}

execute in patchwreck:grove run fillbiome 204 105 78 206 107 80 patchwreck:grove_checkpoint
execute in patchwreck:grove run setblock 205 106 79 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:grove run setblock 205 105 79 minecraft:barrier[waterlogged=false]
execute in patchwreck:grove positioned 205.0 105.0 79.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 1674845438, -409187719, -1743924346, -21597857]}
data merge entity 63d41cfe-e79c-4a79-980d-d386feb6715f {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Enchanted Grove - Checkpoint 2","color":"green"}', Pos: [205.0d, 105.0d, 79.0d], Rotation: [-180.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 63d41cfe-e79c-4a79-980d-d386feb6715f patchwreck.checkpoint 42
scoreboard players display name 63d41cfe-e79c-4a79-980d-d386feb6715f patchwreck.checkpoint {"text":"Enchanted Grove - Checkpoint 2","color":"green"}

execute in patchwreck:grove run fillbiome 127 121 47 129 123 49 patchwreck:grove_checkpoint
execute in patchwreck:grove run setblock 128 122 48 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:grove run setblock 128 121 48 minecraft:barrier[waterlogged=false]
execute in patchwreck:grove positioned 128.0 121.0 48.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 1397771826, 618874600, -1926993808, -1573258450]}
data merge entity 53504e32-24e3-46e8-8d24-6870a239fb2e {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Enchanted Grove - Checkpoint 3","color":"green"}', Pos: [128.0d, 121.0d, 48.0d], Rotation: [90.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 53504e32-24e3-46e8-8d24-6870a239fb2e patchwreck.checkpoint 43
scoreboard players display name 53504e32-24e3-46e8-8d24-6870a239fb2e patchwreck.checkpoint {"text":"Enchanted Grove - Checkpoint 3","color":"green"}

execute in patchwreck:metropolis run fillbiome 104 105 99 106 107 101 patchwreck:metropolis_checkpoint
execute in patchwreck:metropolis run setblock 105 106 100 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:metropolis run setblock 105 105 100 minecraft:barrier[waterlogged=false]
execute in patchwreck:metropolis positioned 105.0 105.0 100.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -1479351829, 504317256, -1128549534, -1336881307]}
data merge entity a7d2e1eb-1e0f-4548-bcbb-b362b050cf65 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Neon Metropolis - Checkpoint 1","color":"green"}', Pos: [105.0d, 105.0d, 100.0d], Rotation: [-90.0f, 0.0f], transformation: {translation: [-1.0f, 0.0f, 0.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set a7d2e1eb-1e0f-4548-bcbb-b362b050cf65 patchwreck.checkpoint 51
scoreboard players display name a7d2e1eb-1e0f-4548-bcbb-b362b050cf65 patchwreck.checkpoint {"text":"Neon Metropolis - Checkpoint 1","color":"green"}

execute in patchwreck:metropolis run fillbiome 155 69 118 157 71 120 patchwreck:metropolis_checkpoint
execute in patchwreck:metropolis run setblock 156 70 119 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:metropolis run setblock 156 69 119 minecraft:barrier[waterlogged=false]
execute in patchwreck:metropolis positioned 156.0 69.0 119.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -1121285989, -149732633, -1314318977, -1782171970]}
data merge entity bd2a889b-f713-42e7-b1a9-157f95c636be {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Neon Metropolis - Checkpoint 2","color":"green"}', Pos: [156.0d, 69.0d, 119.0d], Rotation: [90.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set bd2a889b-f713-42e7-b1a9-157f95c636be patchwreck.checkpoint 52
scoreboard players display name bd2a889b-f713-42e7-b1a9-157f95c636be patchwreck.checkpoint {"text":"Neon Metropolis - Checkpoint 2","color":"green"}

execute in patchwreck:metropolis run fillbiome 211 103 81 213 105 83 patchwreck:metropolis_checkpoint
execute in patchwreck:metropolis run setblock 212 104 82 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:metropolis run setblock 212 103 82 minecraft:barrier[waterlogged=false]
execute in patchwreck:metropolis positioned 212.0 103.0 82.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; 2142058343, 459688514, -1880031619, -1056899854]}
data merge entity 7fad3767-1b66-4a42-8ff0-fe7dc100fcf2 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Neon Metropolis - Checkpoint 3","color":"green"}', Pos: [212.0d, 103.0d, 82.0d], Rotation: [125.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set 7fad3767-1b66-4a42-8ff0-fe7dc100fcf2 patchwreck.checkpoint 53
scoreboard players display name 7fad3767-1b66-4a42-8ff0-fe7dc100fcf2 patchwreck.checkpoint {"text":"Neon Metropolis - Checkpoint 3","color":"green"}

execute in patchwreck:metropolis run fillbiome 300 119 80 302 121 82 patchwreck:metropolis_checkpoint
execute in patchwreck:metropolis run setblock 301 120 81 minecraft:light[level=12,waterlogged=false]
execute in patchwreck:metropolis run setblock 301 119 81 minecraft:barrier[waterlogged=false]
execute in patchwreck:metropolis positioned 301.0 119.0 81.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {UUID: [I; -1561003005, -1006743694, -1766914780, -1708175791]}
data merge entity a2f4fc03-c3fe-4f72-96af-05249a2f4e51 {Tags: ["patchwreck.checkpoint"], CustomName: '{"text":"Neon Metropolis - Checkpoint 4","color":"green"}', Pos: [301.0d, 119.0d, 81.0d], Rotation: [90.0f, 0.0f], transformation: {translation: [0.0f, 0.0f, -1.0f]}, block_state: {Name: "minecraft:respawn_anchor", Properties: {charges: "4"}}}
scoreboard players set a2f4fc03-c3fe-4f72-96af-05249a2f4e51 patchwreck.checkpoint 54
scoreboard players display name a2f4fc03-c3fe-4f72-96af-05249a2f4e51 patchwreck.checkpoint {"text":"Neon Metropolis - Checkpoint 4","color":"green"}
