execute as @e[tag=sc.cur] run function sc:release
effect clear @s minecraft:levitation
effect give @s minecraft:slow_falling 6 0 true
function sc:unroot
scoreboard players set @s sc.stage 0
scoreboard players set @s sc.cd 200
