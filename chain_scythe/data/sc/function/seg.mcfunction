summon minecraft:block_display ~ ~ ~ {Tags:["sc.chain","sc.new"],block_state:"minecraft:iron_chain",brightness:{sky:15,block:15},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,0f],scale:[1f,1f,1f]}}
execute as @e[type=block_display,tag=sc.new,distance=..2] run tp @s ~ ~ ~ ~ ~
tag @e[type=block_display,tag=sc.new,distance=..2] remove sc.new
scoreboard players add #n sc.dist 1
scoreboard players set #hit sc.dist 0
execute positioned ~ ~-1.4 ~ if entity @e[tag=sc.cur,distance=..1.2] run scoreboard players set #hit sc.dist 1
execute if score #hit sc.dist matches 0 if score #n sc.dist matches ..40 if score #n sc.dist <= #cap sc.dist positioned ^ ^ ^1 run function sc:seg
