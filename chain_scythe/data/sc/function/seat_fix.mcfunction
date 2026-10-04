# Riding shifts the caster by a fixed offset; slide the seat back so the caster stays exactly where they reached the top
execute store result score #d sc.dist run data get entity @s Pos[1] 1000
scoreboard players operation #d sc.dist -= @s sc.y
execute store result storage sc:tmp dy double -0.001 run scoreboard players get #d sc.dist
execute as @e[type=armor_stand,tag=sc.seat] if score @s sc.link = #my sc.dist at @s run function sc:seat_shift with storage sc:tmp
