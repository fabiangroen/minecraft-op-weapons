scoreboard players remove @s cb.cd 1
scoreboard players operation @s cb.sec = @s cb.cd
scoreboard players add @s cb.sec 19
scoreboard players operation @s cb.sec /= #20 cb.dist
execute if score @s cb.cd matches 1.. if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{corrupted_beacon:1b}] run title @s actionbar [{text:"Corrupted Beacon ",color:"dark_purple"},{score:{name:"@s",objective:"cb.sec"},color:"light_purple"},{text:"s",color:"light_purple"}]
execute if score @s cb.cd matches 0 run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 1.5
execute if score @s cb.cd matches 0 if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{corrupted_beacon:1b}] run title @s actionbar {text:"Corrupted Beacon ready",color:"light_purple"}
