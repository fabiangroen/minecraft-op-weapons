function sc:hold
execute if score @s sc.t matches ..20 run effect give @s minecraft:levitation 1 3 true
execute if score @s sc.t matches 21.. run effect clear @s minecraft:levitation
execute if score @s sc.t matches 21.. run effect give @s minecraft:levitation 1 0 true
particle minecraft:soul ~ ~0.2 ~ 0.5 0.1 0.5 0.05 4 force
particle minecraft:dust{color:[0.35,0.0,0.5],scale:1.5} ~ ~0.1 ~ 0.7 0.05 0.7 0 8 force
execute as @e[tag=sc.cur] at @s run particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.03 2 force
execute if score @s sc.t matches 6 run playsound minecraft:block.chain.step player @a ~ ~ ~ 1.5 0.7
execute if score @s sc.t matches 12 run playsound minecraft:block.chain.step player @a ~ ~ ~ 1.5 0.9
execute if score @s sc.t matches 18 run playsound minecraft:block.chain.step player @a ~ ~ ~ 1.5 1.1
execute if score @s sc.t matches 24 run playsound minecraft:block.chain.step player @a ~ ~ ~ 1.5 1.3
execute if score @s sc.t matches 28 run function sc:to_yank
