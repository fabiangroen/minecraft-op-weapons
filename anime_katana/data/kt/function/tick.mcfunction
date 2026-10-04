execute as @e[type=block_display,tag=kt.fx] run function kt:fx_tick
execute as @a unless score @s kt.timer matches 1.. run function kt:unroot
execute as @a[scores={kt.use=1..}] at @s run function kt:use
execute as @a[scores={kt.cd=1..}] run scoreboard players remove @s kt.cd 1
execute as @a[scores={kt.timer=1..}] at @s run function kt:cast_tick
execute as @e[tag=kt.victim] at @s run function kt:victim_tick
