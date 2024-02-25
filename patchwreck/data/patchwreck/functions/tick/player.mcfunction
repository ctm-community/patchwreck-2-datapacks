#> patchwreck:tick/player
# Run player-specific ticking events

# Run player tick events for sub-packs
function manoloesmanolo:tick/player

# Run player initialization if all load functions have run
execute if score $level patchwreck.init matches 1 unless score @s patchwreck.init matches 1 run function patchwreck:init/player
