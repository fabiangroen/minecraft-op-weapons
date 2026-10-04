scoreboard players add #next sc.dist 1
scoreboard players operation @s sc.id = #next sc.dist
scoreboard players operation @e[tag=sc.found,limit=1] sc.link = @s sc.id
scoreboard players set @e[tag=sc.found,limit=1] sc.ttl 220
tag @e[tag=sc.found,limit=1] add sc.held
scoreboard players set @s sc.stage 1
scoreboard players set @s sc.t 0
attribute @s minecraft:movement_speed modifier add sc:root -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add sc:root -1 add_multiplied_total
effect give @s minecraft:resistance 8 2 true
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.chain.break player @a ~ ~ ~ 1.5 0.6
