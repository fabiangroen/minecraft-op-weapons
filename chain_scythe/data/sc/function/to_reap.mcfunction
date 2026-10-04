scoreboard players set @s sc.stage 4
scoreboard players set @s sc.t 0
effect give @s minecraft:instant_health 1 0 true
particle minecraft:heart ~ ~1.8 ~ 0.3 0.3 0.3 0 6 force
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 1.4
execute as @e[tag=sc.cur] at @s run function sc:reap_fx
