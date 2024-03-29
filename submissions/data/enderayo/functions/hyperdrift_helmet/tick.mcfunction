#> enderayo:hyperdrift_helmet/tick

bossbar set enderayo:hyperdrift players @a[tag=hyperdrifter]

execute if score $light_blue enderayo.hyperdrift matches 0 as @a[tag=hyperdrifter] run function enderayo:hyperdrift_helmet/equip_magenta
execute if score $light_blue enderayo.hyperdrift matches 0 run scoreboard players set $magenta enderayo.hyperdrift 200
execute if score $light_blue enderayo.hyperdrift matches 0 run bossbar set enderayo:hyperdrift color pink
execute if score $light_blue enderayo.hyperdrift matches 0 run bossbar set enderayo:hyperdrift name [{"translate":"enderayo.functions.hyperdrift_helmet.tick.1", "color":"light_purple"}]

execute if score $magenta enderayo.hyperdrift matches 0 as @a[tag=hyperdrifter] run function enderayo:hyperdrift_helmet/equip_light_blue
execute if score $magenta enderayo.hyperdrift matches 0 run scoreboard players set $light_blue enderayo.hyperdrift 200
execute if score $magenta enderayo.hyperdrift matches 0 run bossbar set enderayo:hyperdrift color blue
execute if score $magenta enderayo.hyperdrift matches 0 run bossbar set enderayo:hyperdrift name [{"translate":"bossbar.enderayo:hyperdrift.name.1", "color":"aqua"}]

execute if score $light_blue enderayo.hyperdrift matches 1.. store result bossbar enderayo:hyperdrift value run scoreboard players get $light_blue enderayo.hyperdrift
execute if score $magenta enderayo.hyperdrift matches 1.. store result bossbar enderayo:hyperdrift value run scoreboard players get $magenta enderayo.hyperdrift
