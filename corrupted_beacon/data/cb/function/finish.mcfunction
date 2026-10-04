attribute @s minecraft:gravity modifier remove cb:hover
effect clear @s minecraft:levitation
effect give @s minecraft:slow_falling 8 0 true
scoreboard players set @s cb.cd 400
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 2 0.5
