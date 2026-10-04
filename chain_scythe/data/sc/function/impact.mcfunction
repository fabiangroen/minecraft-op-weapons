damage @s 36 minecraft:indirect_magic by @a[tag=sc.me,limit=1]
particle minecraft:explosion_emitter ~ ~0.2 ~ 0 0 0 0 1 force
particle minecraft:explosion ~ ~0.3 ~ 0.3 0.1 0.3 0 3 force
particle minecraft:cloud ~ ~0.1 ~ 1.2 0.05 1.2 0.15 40 force
particle minecraft:block{block_state:"minecraft:dirt"} ~ ~0.1 ~ 0.8 0.1 0.8 0.3 60 force
particle minecraft:dust{color:[0.45,0.0,0.6],scale:2} ~ ~0.2 ~ 1 0.1 1 0 40 force
playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 0.9
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 0.7
execute as @e[distance=..4,tag=!sc.me,tag=!sc.cur,type=!#sc:ignore] run damage @s 10 minecraft:indirect_magic by @a[tag=sc.me,limit=1]
scoreboard players set @a[tag=sc.me] sc.stage 6
