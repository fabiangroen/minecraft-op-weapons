execute unless block ~ ~ ~ #minecraft:replaceable run return run function cb:impact

particle minecraft:dust{color:[1.0,0.7,1.0],scale:1.2} ~ ~ ~ 0 0 0 0 2 force
particle minecraft:dust_color_transition{from_color:[0.8,0.1,1.0],to_color:[0.35,0.0,0.6],scale:3} ~ ~ ~ 0.15 0.15 0.15 0 4 force
particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0.6 3 force
particle minecraft:witch ~ ~ ~ 0.25 0.25 0.25 0 1 force

execute if entity @s[tag=cb.dmg] as @e[distance=..1.5,tag=!cb.caster,tag=!cb.hit,type=!#cb:ignore] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.5 0.3 0.03 6 force
execute if entity @s[tag=cb.dmg] as @e[distance=..1.5,tag=!cb.caster,tag=!cb.hit,type=!#cb:ignore] run effect give @s minecraft:glowing 2 0 true
execute if entity @s[tag=cb.dmg] as @e[distance=..1.5,tag=!cb.caster,tag=!cb.hit,type=!#cb:ignore] run damage @s 6 minecraft:indirect_magic by @a[tag=cb.caster,limit=1]
execute if entity @s[tag=cb.dmg] run tag @e[distance=..1.5,tag=!cb.caster,type=!#cb:ignore] add cb.hit

scoreboard players add #d cb.dist 1
execute if score #d cb.dist matches ..48 positioned ^ ^ ^0.5 run function cb:ray
execute if score #d cb.dist matches 49.. run function cb:impact
