execute if score @s kt.cd matches 1.. run return run title @s actionbar {text:"The blade needs a moment...",color:"gray"}
# Timeline (ticks left): 59-31 draw, 30-24 dash, 23-11 pose, 10 sheathe, 9 victims are cut, 0 done
scoreboard players set @s kt.timer 60
attribute @s minecraft:movement_speed modifier add kt:root -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add kt:root -1 add_multiplied_total
effect give @s minecraft:resistance 4 2 true
playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1.5 1.6
