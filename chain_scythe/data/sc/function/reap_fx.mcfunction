# Ignores armor points but not Protection enchantments (same profile as the beacon)
damage @s 12 minecraft:indirect_magic by @a[tag=sc.me,limit=1]
particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0 6 force
particle minecraft:soul ~ ~1 ~ 0.4 0.5 0.4 0.15 15 force
particle minecraft:damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0.1 8 force
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1.2 0.8
summon minecraft:block_display ~ ~1 ~ {Tags:["sc.fx","sc.fresh","sc.new","sc.a"],block_state:"minecraft:purple_stained_glass",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,-0.2f,-1.5f],scale:[0.4f,0.4f,3f]}}
summon minecraft:block_display ~ ~1 ~ {Tags:["sc.fx","sc.fresh","sc.new","sc.a"],block_state:"minecraft:white_concrete",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-1.5f],scale:[0.1f,0.1f,3f]}}
execute positioned ~ ~1 ~ rotated ~90 -40 as @e[type=block_display,tag=sc.new,distance=..2] run tp @s ~ ~ ~ ~ ~
tag @e[type=block_display,tag=sc.new,distance=..2] remove sc.new
