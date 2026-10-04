scoreboard players set @s sc.use 0
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{sc_scythe:1b}] unless score @s sc.stage matches 1.. run function sc:begin
