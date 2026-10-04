# Light streak over the 2 blocks travelled this tick (only if the way is clear)
execute positioned ^ ^ ^2 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable positioned ^ ^ ^-1 positioned ~ ~0.9 ~ run function kt:streak
# Travel 2 blocks per tick in 1-block steps
scoreboard players set #s kt.dist 0
scoreboard players operation #t kt.dist = @s kt.timer
function kt:dash_step
