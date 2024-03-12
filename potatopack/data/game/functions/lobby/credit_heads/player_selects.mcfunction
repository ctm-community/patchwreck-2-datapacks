#Happens on at the player that selected a credits head

execute at @s positioned ^ ^ ^4 as @e[distance=..7,type=interaction,tag=credits_interaction,limit=1,sort=nearest] at @s run function game:lobby/credit_heads/selected

advancement revoke @s only game:lobby/head
advancement revoke @s only game:lobby/head2