function sc:hold
# Big jump: wind charges launch the caster with real velocity, vanilla gravity makes the arc.
# At the top of the arc (height stops increasing) the hover starts and the yank begins.
execute if score @s sc.t matches 1 run function sc:launch
execute store result score #y sc.dist run data get entity @s Pos[1] 1000
# Climb per tick in thousandths of a block; hang as soon as it is nearly over, before gravity pulls the caster down
scoreboard players operation #dy sc.dist = #y sc.dist
scoreboard players operation #dy sc.dist -= @s sc.y
execute if score @s sc.t matches 4.. if score #dy sc.dist matches ..40 run return run function sc:to_yank
execute if score @s sc.t matches 60.. run return run function sc:to_yank
scoreboard players operation @s sc.y = #y sc.dist
particle minecraft:soul ~ ~0.2 ~ 0.5 0.1 0.5 0.05 4 force
particle minecraft:dust{color:[0.35,0.0,0.5],scale:1.5} ~ ~0.1 ~ 0.7 0.05 0.7 0 8 force
execute as @e[tag=sc.cur] at @s run particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.03 2 force
execute if score @s sc.t matches 6 run playsound minecraft:block.chain.step player @a ~ ~ ~ 1.5 1.2
