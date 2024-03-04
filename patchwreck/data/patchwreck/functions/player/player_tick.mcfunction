#20hz on all players

#Beetroot offshoot
execute if entity @s[tag=beetrooter] run function patchwreck:player/beetroot_tick

#Remove advancements and flags
scoreboard players set @s bloodbeet.kills 0
advancement revoke @s only patchwreck:invchange
advancement revoke @s only qqruzka:hurt