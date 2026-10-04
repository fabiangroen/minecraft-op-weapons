function sc:hold
execute if score @s sc.t matches 5 as @e[tag=sc.cur] at @s run function sc:hook_fx
execute if score @s sc.t matches 8 run function sc:to_ascend
