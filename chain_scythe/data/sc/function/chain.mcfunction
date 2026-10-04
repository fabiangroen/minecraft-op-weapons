scoreboard players set #n sc.dist 0
scoreboard players set #cap sc.dist 100
# While the chain is flying out (stage 1) it grows 5 blocks per tick
execute if score #st sc.dist matches 1 run scoreboard players operation #cap sc.dist = @s sc.t
execute if score #st sc.dist matches 1 run scoreboard players operation #cap sc.dist *= #5 sc.dist
execute anchored eyes positioned ^-0.35 ^-0.5 ^0.4 facing entity @e[tag=sc.cur,limit=1] eyes run function sc:seg
