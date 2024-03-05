

#BEE CODE
data modify entity @s[tag=!anger_applied] AngryAt set from entity @p UUID
tag @s add anger_applied
kill @s[type=bee,tag=enderayo.angry,nbt={HasStung: 1b}]

