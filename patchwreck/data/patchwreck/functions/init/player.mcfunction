#> patchwreck:init/player
# Run one-time player initialization operations

# Run player init events for sub-packs
function manoloesmanolo:init

# Set player init flag after all init functions have run
scoreboard players set @s patchwreck.init 1
