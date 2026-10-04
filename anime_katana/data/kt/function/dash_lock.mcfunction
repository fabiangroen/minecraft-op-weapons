execute store result score @s kt.yaw run data get entity @s Rotation[0] 1000
execute store result score @s kt.pitch run data get entity @s Rotation[1] 1000
# Standing on the ground and looking down would bury the dash: flatten it. In the air, dive freely.
execute if score @s kt.pitch matches 1.. unless block ~ ~-0.2 ~ #minecraft:replaceable run scoreboard players set @s kt.pitch 0
playsound minecraft:item.trident.riptide_2 player @a ~ ~ ~ 1.5 1.4
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1.2
particle minecraft:cloud ~ ~0.2 ~ 0.4 0.1 0.4 0.15 20 force
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1 force
