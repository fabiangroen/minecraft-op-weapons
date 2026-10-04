function sc:unhold
effect clear @s minecraft:slowness
tag @s remove sc.held
tag @s remove sc.cur
scoreboard players reset @s sc.link
scoreboard players reset @s sc.ttl
