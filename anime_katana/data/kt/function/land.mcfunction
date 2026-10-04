playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 0.7
particle minecraft:sweep_attack ~ ~1 ~ 0.3 0.3 0.3 0 5 force
particle minecraft:cloud ~ ~0.1 ~ 0.5 0.1 0.5 0.1 15 force
function kt:anchor
effect give @s minecraft:slow_falling 3 0 true
