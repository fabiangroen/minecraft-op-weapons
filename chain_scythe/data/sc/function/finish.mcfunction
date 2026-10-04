execute as @e[tag=sc.cur] run function sc:release
effect give @s minecraft:slow_falling 6 0 true
scoreboard players set @s sc.fall 120
function sc:unroot
scoreboard players set @s sc.stage 0
scoreboard players set @s sc.cd 200
