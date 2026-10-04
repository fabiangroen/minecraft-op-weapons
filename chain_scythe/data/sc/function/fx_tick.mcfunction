execute if entity @s[tag=sc.fresh] run function sc:fx_fade
scoreboard players remove @s sc.t 1
execute if score @s sc.t matches ..0 run kill @s
