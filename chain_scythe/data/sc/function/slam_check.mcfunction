# Normal gravity all the way down (a real slam). Only when the ground is near, cancel fall damage so the impact, credited to the caster, is what kills.
scoreboard players set #s sc.dist 0
function sc:slam_scan
particle minecraft:large_smoke ~ ~1 ~ 0.15 0.4 0.15 0.02 3 force
particle minecraft:crit ~ ~1 ~ 0.2 0.5 0.2 0.1 4 force
execute if entity @s[predicate=sc:on_ground] run function sc:impact
