execute if score @s sc.cd matches 1.. run return run title @s actionbar {text:"The chain is still recoiling...",color:"dark_gray"}
tag @s add sc.me
scoreboard players set #d sc.dist 0
execute anchored eyes positioned ^ ^ ^0.5 run function sc:ray
execute if entity @e[tag=sc.found,limit=1] run function sc:hook
execute unless entity @e[tag=sc.found,limit=1] run function sc:whiff
tag @e[tag=sc.found] remove sc.found
tag @s remove sc.me
