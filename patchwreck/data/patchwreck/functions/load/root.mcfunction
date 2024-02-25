#> patchwreck:load/root
# Run all data pack load functions

function patchwreck:load/level
function manoloesmanolo:load/level

# Set level init flag after all load functions have run
scoreboard players set $level patchwreck.init 1
