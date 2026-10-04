tag @s add sc.me
scoreboard players operation #my sc.dist = @s sc.id
execute as @e[tag=sc.held] if score @s sc.link = #my sc.dist run tag @s add sc.cur
function sc:run
tag @s remove sc.me
tag @e[tag=sc.cur] remove sc.cur
