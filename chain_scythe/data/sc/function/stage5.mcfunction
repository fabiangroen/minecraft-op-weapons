function sc:hold
scoreboard players set #s sc.dist 0
execute as @e[tag=sc.cur] at @s run function sc:slam_step
execute if score @s sc.t matches 60.. if score @s sc.stage matches 5 as @e[tag=sc.cur] at @s run function sc:impact
execute if score @s sc.stage matches 6 run function sc:finish
