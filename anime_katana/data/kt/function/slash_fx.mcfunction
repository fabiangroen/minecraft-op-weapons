summon minecraft:block_display ~ ~1 ~ {Tags:["kt.fx","kt.fresh","kt.new","kt.a"],block_state:{Name:"minecraft:white_concrete"},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.04f,-0.04f,-1.5f],scale:[0.08f,0.08f,3f]}}
summon minecraft:block_display ~ ~1 ~ {Tags:["kt.fx","kt.fresh","kt.new","kt.b"],block_state:{Name:"minecraft:white_concrete"},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.04f,-0.04f,-1.5f],scale:[0.08f,0.08f,3f]}}
execute positioned ~ ~1 ~ rotated ~90 -35 as @e[type=block_display,tag=kt.a,tag=kt.new] run tp @s ~ ~ ~ ~ ~
execute positioned ~ ~1 ~ rotated ~90 35 as @e[type=block_display,tag=kt.b,tag=kt.new] run tp @s ~ ~ ~ ~ ~
tag @e[type=block_display,tag=kt.new] remove kt.new
