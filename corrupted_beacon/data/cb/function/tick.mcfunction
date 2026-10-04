kill @e[type=block_display,tag=cb.beam]
# Safety: anyone not mid-cast must have normal gravity (covers death/logout mid-cast)
execute as @a unless score @s cb.timer matches 1.. run attribute @s minecraft:gravity modifier remove cb:hover
execute as @a[scores={cb.cd=1..}] at @s run function cb:cooldown
execute as @a[scores={cb.use=1..}] at @s run function cb:start
execute as @a[scores={cb.timer=1..}] at @s run function cb:fire
