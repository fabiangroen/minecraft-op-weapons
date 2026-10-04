scoreboard players set @s kt.use 0
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{kt_katana:1b}] unless score @s kt.timer matches 1.. run function kt:begin
