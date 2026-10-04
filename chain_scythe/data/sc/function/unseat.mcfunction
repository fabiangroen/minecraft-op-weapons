# Remove this caster's seat (killing the vehicle drops the rider)
scoreboard players operation #my sc.dist = @s sc.id
execute as @e[type=armor_stand,tag=sc.seat] if score @s sc.link = #my sc.dist run kill @s
tag @s remove sc.seated
