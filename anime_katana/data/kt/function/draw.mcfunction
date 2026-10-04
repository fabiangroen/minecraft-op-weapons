# Energy gathers around the caster
particle minecraft:enchant ~ ~1 ~ 0.6 0.8 0.6 1.2 6 force
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.2 4 force
particle minecraft:end_rod ~ ~1 ~ 0.5 0.7 0.5 0.02 1 force
# Telegraph: a red line on the ground shows everyone where the dash will go
scoreboard players set #p kt.dist 0
execute if entity @s[x_rotation=..0] positioned ~ ~0.15 ~ run function kt:preview
execute if entity @s[x_rotation=0.01..] if block ~ ~-0.2 ~ #minecraft:replaceable positioned ~ ~0.15 ~ run function kt:preview
execute if entity @s[x_rotation=0.01..] unless block ~ ~-0.2 ~ #minecraft:replaceable rotated ~ 0 positioned ~ ~0.15 ~ run function kt:preview
# Rising chimes
execute if score @s kt.timer matches 55 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 0.8
execute if score @s kt.timer matches 46 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.1
execute if score @s kt.timer matches 39 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.4
execute if score @s kt.timer matches 34 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.8
execute if score @s kt.timer matches 31 run particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0.4 25 force
