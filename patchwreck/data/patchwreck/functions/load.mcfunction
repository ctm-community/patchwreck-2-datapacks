#> patchwreck:load
# Run all data pack load functions

# Fix world spawn
setworldspawn 0 100 0

# Initialize Patchwreck
execute in minecraft:overworld run function patchwreck:load/gamerules
execute in patchwreck:gothic run function patchwreck:load/gamerules
execute in patchwreck:tomb run function patchwreck:load/gamerules
execute in patchwreck:wasteland run function patchwreck:load/gamerules
execute in patchwreck:grove run function patchwreck:load/gamerules
execute in patchwreck:metropolis run function patchwreck:load/gamerules
function patchwreck:load/checkpoints
function patchwreck:load/scoreboards
function patchwreck:load/summon

# Initialize Patchwreck submissions
function enderayo:load
function jevexendo:load
function matt97:load
function manoloesmanolo:load
function qqruzka:load
