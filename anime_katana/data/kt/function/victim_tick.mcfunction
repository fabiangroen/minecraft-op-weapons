scoreboard players remove @s kt.cut 1
effect give @s minecraft:slowness 1 255 true
particle minecraft:crit ~ ~1 ~ 0.25 0.4 0.25 0 1
execute if score @s kt.cut matches 14 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 1.5 1
execute if score @s kt.cut matches 8 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 1.5 1.2
execute if score @s kt.cut matches 3 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 1.5 1.5
execute if score @s kt.cut matches ..0 run function kt:cut
