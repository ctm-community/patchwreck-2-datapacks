#> patchwreck:tick/entity
# Run all entity ticking events

# Run entity tick events for sub-packs
function safeliquids:tick

# If entity is a player, run additional player-specific ticking events
execute as @s[type=minecraft:player] run function patchwreck:tick/player
