execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #minecraft:replaceable run return 0
execute positioned ^ ^ ^0.5 unless block ~ ~1 ~ #minecraft:replaceable run return 0
execute positioned ^ ^ ^0.5 unless block ~ ~1.8 ~ #minecraft:replaceable run return 0
particle minecraft:dust{color:[1.0,0.15,0.2],scale:0.8} ~ ~ ~ 0.03 0 0.03 0 1 force
execute as @a[distance=..1.8,tag=!kt.caster] run title @s actionbar {text:"A blade is being drawn...",color:"dark_red"}
scoreboard players add #p kt.dist 1
execute if score #p kt.dist matches ..27 positioned ^ ^ ^0.5 run function kt:preview
