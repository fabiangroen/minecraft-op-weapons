function sc:hold
execute if score @s sc.t matches 6 run playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1.5 1.4
execute if score @s sc.t matches 6.. run particle minecraft:soul_fire_flame ~ ~2.2 ~ 0.3 0.3 0.3 0.05 4 force
execute if score @s sc.t matches 6.. run particle minecraft:end_rod ~ ~2.5 ~ 0.2 0.2 0.2 0.02 1 force
execute if score @s sc.t matches 12 run function sc:to_slam
