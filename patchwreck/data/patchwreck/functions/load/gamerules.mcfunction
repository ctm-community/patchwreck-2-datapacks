#> patchwreck:load/gamerules
# Set expected gamerules

# Configure worldspawn
gamerule spawnRadius 0

# Configure spawning rules
gamerule disableRaids true
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doWardenSpawning false

# Miscellaneous gamerules
gamerule commandBlockOutput false
gamerule doFireTick false
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule mobGriefing true
gamerule sendCommandFeedback false

# Re-enable command feedback if any player is not in survival or adventure mode
execute if entity @a[gamemode=!survival,gamemode=!adventure] run gamerule sendCommandFeedback true
