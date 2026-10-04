$summon minecraft:block_display ~ ~ ~ {Tags:["cb.beam","cb.new"],block_state:{Name:"minecraft:purple_stained_glass"},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,0f],scale:[0.5f,0.5f,$(len)f]}}
$summon minecraft:block_display ~ ~ ~ {Tags:["cb.beam","cb.new"],block_state:{Name:"minecraft:white_concrete"},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0f],scale:[0.2f,0.2f,$(len)f]}}
execute as @e[type=block_display,tag=cb.new] run tp @s ~ ~ ~ ~ ~
tag @e[type=block_display,tag=cb.new] remove cb.new
