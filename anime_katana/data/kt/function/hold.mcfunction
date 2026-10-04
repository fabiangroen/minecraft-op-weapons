# Total freeze: pin the caster to the anchor, even in mid-air
execute store result storage kt:tmp x double 0.001 run scoreboard players get @s kt.x
execute store result storage kt:tmp y double 0.001 run scoreboard players get @s kt.y
execute store result storage kt:tmp z double 0.001 run scoreboard players get @s kt.z
function kt:hold_tp with storage kt:tmp
