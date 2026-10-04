kill @e[type=block_display,tag=sc.chain]
execute as @e[type=block_display,tag=sc.fx] run function sc:fx_tick
execute as @a unless score @s sc.stage matches 1.. run function sc:unroot
execute as @a[scores={sc.use=1..}] at @s run function sc:use
execute as @a[scores={sc.cd=1..}] run scoreboard players remove @s sc.cd 1
execute as @a[scores={sc.stage=1..}] at @s run function sc:cast_tick
execute as @e[tag=sc.held] run function sc:held_tick
execute as @a[scores={sc.fall=1..}] at @s run function sc:descent
