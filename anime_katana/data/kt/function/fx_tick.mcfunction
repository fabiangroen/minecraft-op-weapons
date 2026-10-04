execute if entity @s[tag=kt.fresh] run function kt:fx_fade
scoreboard players remove @s kt.cut 1
execute if score @s kt.cut matches ..0 run kill @s
