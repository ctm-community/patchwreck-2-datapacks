#> matt97:load

# Initialize scoreboard objectives
scoreboard objectives add m97_health_query dummy
scoreboard objectives add m97_expected_health dummy
scoreboard objectives add m97_death_id dummy
scoreboard objectives add m97_current_id dummy
scoreboard objectives add m97_chain_count dummy
scoreboard objectives add m97_chain_id_number dummy
scoreboard objectives add m97_chain_id dummy
scoreboard objectives add m97_segment dummy
scoreboard objectives add m97_segment_init dummy
scoreboard objectives add m97_sound_timer dummy
scoreboard objectives add m97_blink_timer dummy
scoreboard objectives add m97_despawn_timer dummy
scoreboard objectives add m97_Motion_x dummy
scoreboard objectives add m97_Motion_y dummy
scoreboard objectives add m97_Motion_z dummy
scoreboard objectives add m97_bat_pos_x dummy
scoreboard objectives add m97_bat_pos_y dummy
scoreboard objectives add m97_bat_pos_z dummy
scoreboard objectives add m97_bat_motion_x dummy
scoreboard objectives add m97_bat_motion_y dummy
scoreboard objectives add m97_bat_motion_z dummy
scoreboard objectives add m97_swarm_pos_x dummy
scoreboard objectives add m97_swarm_pos_y dummy
scoreboard objectives add m97_swarm_pos_z dummy
scoreboard objectives add m97_swarm_motion_x dummy
scoreboard objectives add m97_swarm_motion_y dummy
scoreboard objectives add m97_swarm_motion_z dummy
scoreboard objectives add m97_swarm_count dummy

# Initialize scoreboard values
scoreboard players add m97_dummyPlayer m97_chain_id_number 0
scoreboard players add m97_dummyPlayer m97_blink_timer 0

# Initialize teams
team add serpents
team modify serpents collisionRule always
