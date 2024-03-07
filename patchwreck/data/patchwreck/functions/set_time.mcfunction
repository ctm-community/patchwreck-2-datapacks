#Sets the time in dimensions

execute in minecraft:overworld if entity @a[limit=1,distance=..999] run time set midnight
execute in patchwreck:gothic if entity @a[limit=1,distance=..999] run time set 16000
execute in patchwreck:tomb if entity @a[limit=1,distance=..999] run time set noon
execute in patchwreck:wasteland if entity @a[limit=1,distance=..999] run time set 23500
execute in patchwreck:grove if entity @a[limit=1,distance=..999] run time set midnight
execute in patchwreck:metropolis if entity @a[limit=1,distance=..999] run time set 22100