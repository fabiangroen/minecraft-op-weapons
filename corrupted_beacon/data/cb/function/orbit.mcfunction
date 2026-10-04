# Display-entity flair around the caster (killed and redrawn every tick by cb:tick)
# Floating beacon above the head
summon minecraft:block_display ~ ~2.4 ~ {Tags:["cb.beam"],block_state:"minecraft:beacon",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0f,-0.3f],scale:[0.6f,0.6f,0.6f]}}
# Three shards spinning around the body
scoreboard players operation #a cb.dist = @s cb.timer
scoreboard players operation #a cb.dist *= #20 cb.dist
execute store result storage cb:tmp yaw float 1 run scoreboard players get #a cb.dist
function cb:orbit_run with storage cb:tmp
