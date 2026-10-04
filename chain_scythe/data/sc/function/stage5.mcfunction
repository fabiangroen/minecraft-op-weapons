# The target is no longer held: wind charges throw them into the ground, vanilla physics does the fall
execute if score @s sc.t matches 1 as @e[tag=sc.cur] at @s run function sc:slam_launch
execute if score @s sc.t matches 3.. if score @s sc.stage matches 5 as @e[tag=sc.cur] at @s run function sc:slam_check
execute if score @s sc.t matches 60.. if score @s sc.stage matches 5 as @e[tag=sc.cur] at @s run function sc:impact
execute if score @s sc.stage matches 6 run function sc:finish
