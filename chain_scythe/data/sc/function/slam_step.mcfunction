execute unless block ~ ~-1 ~ #minecraft:replaceable run return run function sc:impact
tp @s ~ ~-1 ~ facing entity @a[tag=sc.me,limit=1] eyes
particle minecraft:large_smoke ~ ~1 ~ 0.15 0.4 0.15 0.02 3 force
particle minecraft:crit ~ ~1 ~ 0.2 0.5 0.2 0.1 4 force
scoreboard players add #s sc.dist 1
execute if score #s sc.dist matches ..1 run function sc:slam_step
