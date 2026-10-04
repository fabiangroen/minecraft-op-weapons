# Ominous drift down after the slam: sparse soul/dust particles and a quiet chain sound
scoreboard players remove @s sc.fall 1
execute if entity @s[predicate=sc:on_ground] run return run scoreboard players set @s sc.fall 0
particle minecraft:soul ~ ~0.8 ~ 0.35 0.6 0.35 0.01 1 force
particle minecraft:dust{color:[0.35,0.0,0.5],scale:1.2} ~ ~1 ~ 0.4 0.7 0.4 0 2 force
scoreboard players operation #f sc.dist = @s sc.fall
scoreboard players operation #f sc.dist %= #20 sc.dist
execute if score #f sc.dist matches 0 run playsound minecraft:block.chain.step player @a ~ ~ ~ 0.8 0.6
