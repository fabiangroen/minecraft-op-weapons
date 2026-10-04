summon minecraft:block_display ~ ~ ~ {Tags:["kt.fx","kt.fresh","kt.new"],block_state:"minecraft:cyan_stained_glass",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,-0.2f,-1.5f],scale:[0.4f,0.4f,3f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["kt.fx","kt.fresh","kt.new"],block_state:"minecraft:white_concrete",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.06f,-0.06f,-1.5f],scale:[0.12f,0.12f,3f]}}
execute as @e[type=block_display,tag=kt.new,distance=..2] run tp @s ~ ~ ~ ~ ~
tag @e[type=block_display,tag=kt.new,distance=..2] remove kt.new
