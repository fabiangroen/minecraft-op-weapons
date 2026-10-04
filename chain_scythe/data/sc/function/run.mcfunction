execute unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{sc_scythe:1b}] run return run function sc:finish
execute unless entity @e[tag=sc.cur,limit=1] run return run function sc:finish
scoreboard players add @s sc.t 1
scoreboard players operation #st sc.dist = @s sc.stage
execute if score #st sc.dist matches 1 run function sc:stage1
execute if score #st sc.dist matches 2 run function sc:stage2
execute if score #st sc.dist matches 3 run function sc:stage3
execute if score #st sc.dist matches 4 run function sc:stage4
execute if score #st sc.dist matches 5 run function sc:stage5
execute if score @s sc.stage matches 1..5 run function sc:chain
