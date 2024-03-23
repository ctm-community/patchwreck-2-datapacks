#> patchwreck:regions/checkpoint_macro
# Set player spawn point to the nearest checkpoint

playsound minecraft:block.respawn_anchor.set_spawn block @s ~ ~ ~ 1 1
$spawnpoint @s ~ ~1 ~ $(yaw)
