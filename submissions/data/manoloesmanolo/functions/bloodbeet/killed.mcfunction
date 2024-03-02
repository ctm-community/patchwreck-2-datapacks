#> manoloesmanolo:bloodbeet/killed
# Penalize kill counter every time an animated bloodbeet is killed
# This is done to prevent the generation of infinite bloodbeets by farming the hostile beet mob itself

scoreboard players remove @s bloodbeet.kills 1
advancement revoke @s only manoloesmanolo:bloodbeet/killed
