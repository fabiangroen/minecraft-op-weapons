execute if score @s sc.t matches 1 run playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 1.5 0.8
function sc:hold
execute if score @s sc.t matches 2 run function sc:seat_fix
execute if score @s sc.t matches 3 run function sc:unseat
execute if entity @e[tag=sc.cur,distance=..3.2] run return run function sc:to_reap
execute if score @s sc.t matches 45.. run return run function sc:to_reap
execute as @e[tag=sc.cur] at @s facing entity @a[tag=sc.me,limit=1] eyes run tp @s ^ ^ ^1.5 facing entity @a[tag=sc.me,limit=1] eyes
execute as @e[tag=sc.cur] at @s run particle minecraft:cloud ~ ~1 ~ 0.2 0.4 0.2 0.05 4 force
