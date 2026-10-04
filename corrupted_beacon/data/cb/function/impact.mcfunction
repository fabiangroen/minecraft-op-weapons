particle minecraft:end_rod ~ ~ ~ 0.4 0.4 0.4 0.15 12 force
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.03 20 force
particle minecraft:dust{color:[0.9,0.2,1.0],scale:4} ~ ~ ~ 0.4 0.4 0.4 0 10 force
execute if entity @s[tag=cb.dmg] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.6 1.6
