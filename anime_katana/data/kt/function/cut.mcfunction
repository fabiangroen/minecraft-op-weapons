# Leave the victim on exactly half a heart (1 HP), ignoring armor and Protection
execute store result score #hp kt.dist run data get entity @s Health 100
scoreboard players remove #hp kt.dist 100
effect clear @s minecraft:absorption
effect clear @s minecraft:slowness
execute if score #hp kt.dist matches 1.. run function kt:cut_hit
function kt:slash_fx

particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0 6 force
particle minecraft:crit ~ ~1 ~ 0.4 0.6 0.4 0.6 30 force
particle minecraft:damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0.1 8 force
particle minecraft:dust{color:[0.7,0.0,0.05],scale:1.5} ~ ~1 ~ 0.3 0.5 0.3 0 25 force
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1.2 0.8
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1.2 0.6

tag @s remove kt.victim
scoreboard players reset @s kt.cut
