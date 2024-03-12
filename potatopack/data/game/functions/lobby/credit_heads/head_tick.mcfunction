#20hz on credit head heads

#Face the player gradually
execute at @s positioned ^ ^ ^0.01 facing entity @p feet positioned ^ ^ ^0.001 rotated ~ ~ run summon marker ~ ~ ~ {UUID:[I;-247325762,1375816113,-1974990415,-1875787867]}
execute at @s facing entity f1421bbe-5201-49b1-8a48-09b19031bfa5 feet run tp @s ~ ~ ~ ~ ~
kill f1421bbe-5201-49b1-8a48-09b19031bfa5

#Too high?
execute if entity @s[x_rotation=-90..-15] at @s run tp @s ~ ~ ~ ~ -15

#Merge self
execute if entity @s[tag=!selected] run data merge entity @s {Glowing:0b,interpolation_duration:2,teleport_duration:2,transformation:[-1.2000f,0.0000f,0.0000f,0.0000f,0.0000f,1.2000f,0.0000f,2.0000f,-0.0000f,0.0000f,-1.2000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute if entity @s[tag=selected] run data merge entity @s {Glowing:1b,interpolation_duration:2,teleport_duration:2,transformation:[-1.5000f,0.0000f,0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,2.0000f,-0.0000f,0.0000f,-1.5000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

#On text display
execute at @s on passengers run function game:lobby/credit_heads/text_tick with entity @e[distance=..2,limit=1,sort=nearest,type=marker,tag=credits_marker] data
