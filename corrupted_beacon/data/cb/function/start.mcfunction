scoreboard players set @s cb.use 0
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{corrupted_beacon:1b}] unless score @s cb.timer matches 1.. unless score @s cb.cd matches 1.. run function cb:begin
