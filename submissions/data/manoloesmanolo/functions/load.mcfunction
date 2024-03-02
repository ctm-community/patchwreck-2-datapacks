#> manoloesmanolo:load
# Initialize scoreboards and storage

scoreboard objectives add bloodbeet.eaten minecraft.used:beetroot
scoreboard objectives add bloodbeet.eating dummy
scoreboard objectives add bloodbeet.item_slot dummy
scoreboard objectives add bloodbeet.kills minecraft.custom:mob_kills
scoreboard objectives add bloodbeet.stack_count dummy
scoreboard objectives add bloodbeet.total_count dummy
scoreboard objectives add bloodbeet.variables dummy

data merge storage manoloesmanolo:storage {bloodbeet: {count: 0b, item_slot: "weapon.mainhand"}, variables: {}, entity: {}}
