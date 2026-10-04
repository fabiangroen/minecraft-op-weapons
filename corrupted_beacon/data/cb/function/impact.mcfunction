summon minecraft:block_display ~ ~ ~ {Tags:["cb.beam"],block_state:"minecraft:purple_stained_glass",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["cb.beam"],block_state:"minecraft:white_concrete",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]}}
particle minecraft:end_rod ~ ~ ~ 0.4 0.4 0.4 0.15 12 force
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.03 20 force
particle minecraft:dust{color:[0.9,0.2,1.0],scale:4} ~ ~ ~ 0.4 0.4 0.4 0 10 force
execute if entity @s[tag=cb.dmg] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.6 1.6
