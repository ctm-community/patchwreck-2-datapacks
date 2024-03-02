#> enderayo:items/demonomicon_on_kill

execute if score $souls enderayo.demonomicon matches ..49 run scoreboard players add $souls enderayo.demonomicon 1
execute as @a[nbt={Inventory: [{tag: {Demonomicon: 1b}}]}] run function enderayo:items/demonomicon_update

advancement revoke @s only enderayo:demonomicon_on_kill
