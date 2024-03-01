scoreboard players set .souls enderayo.demonomicon 0
execute as @a[nbt={Inventory:[{tag:{Demonomicon:1b}}]}] run function enderayo:items/demonomicon_update

advancement revoke @s only enderayo:demonomicon_on_death