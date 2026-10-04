tag @s add kt.victim
# All victims are cut at the same moment (right after the caster sheathes)
scoreboard players operation @s kt.cut = #t kt.dist
scoreboard players remove @s kt.cut 8
effect give @s minecraft:glowing 3 0 true
effect give @s minecraft:slowness 3 255 true
particle minecraft:sweep_attack ~ ~1 ~ 0.3 0.4 0.3 0 3 force
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.3
title @s[type=player] actionbar {text:"...you were already cut.",color:"dark_red"}
