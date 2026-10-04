# Direction (yaw and pitch) is locked on the first dash tick
execute if score @s kt.timer matches 30 run function kt:dash_lock
execute store result storage kt:tmp yaw float 0.001 run scoreboard players get @s kt.yaw
execute store result storage kt:tmp pitch float 0.001 run scoreboard players get @s kt.pitch
function kt:dash_run with storage kt:tmp
