execute unless block ~ ~ ~ #minecraft:replaceable run return 0
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=!sc.me,type=!#sc:ignore,limit=1,sort=nearest] run tag @s add sc.found
execute if entity @e[tag=sc.found,limit=1] run return 0
particle minecraft:smoke ~ ~ ~ 0.02 0.02 0.02 0 1 force
scoreboard players add #d sc.dist 1
execute if score #d sc.dist matches ..47 positioned ^ ^ ^0.5 run function sc:ray
