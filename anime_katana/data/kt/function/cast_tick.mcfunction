execute unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{kt_katana:1b}] run return run function kt:end
tag @s add kt.caster
scoreboard players remove @s kt.timer 1
execute unless score @s kt.timer matches 23..30 run function kt:hold
execute if score @s kt.timer matches 31.. run function kt:draw
execute if score @s kt.timer matches 24..30 run function kt:dash_tick
execute if score @s kt.timer matches 23 run function kt:land
execute if score @s kt.timer matches 10 run function kt:sheathe
execute if score @s kt.timer matches ..0 run function kt:end
tag @s remove kt.caster
