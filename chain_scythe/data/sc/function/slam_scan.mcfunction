execute unless block ~ ~-0.5 ~ #minecraft:replaceable run return run effect give @s minecraft:slow_falling 2 0 true
scoreboard players add #s sc.dist 1
execute if score #s sc.dist matches ..8 positioned ~ ~-1 ~ run function sc:slam_scan
