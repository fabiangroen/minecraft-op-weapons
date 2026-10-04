tp @s ~ ~ ~
particle minecraft:end_rod ~ ~1 ~ 0.1 0.4 0.1 0.03 3 force
particle minecraft:electric_spark ~ ~1 ~ 0.2 0.5 0.2 0.3 4 force
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1 force
execute as @e[distance=..1.8,tag=!kt.caster,tag=!kt.victim,type=!#kt:ignore] at @s run function kt:mark
scoreboard players add #s kt.dist 1
execute if score #s kt.dist matches ..1 run function kt:dash_step
