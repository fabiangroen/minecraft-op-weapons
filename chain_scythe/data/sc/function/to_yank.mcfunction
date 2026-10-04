scoreboard players set @s sc.stage 3
scoreboard players set @s sc.t 0
# Hang at the top of the arc. Riding zeroes a rider's velocity, so the caster is seated on an invisible stand for
# a few ticks (sc:stage3 removes it at t=3) and gravity is off, which leaves them motionless in the air.
attribute @s minecraft:gravity modifier add sc:hover -1 add_multiplied_total
execute store result score @s sc.y run data get entity @s Pos[1] 1000
summon minecraft:armor_stand ~ ~ ~ {Tags:["sc.seat","sc.mine"],Invisible:1b,Marker:1b,NoGravity:1b,Silent:1b,Invulnerable:1b}
scoreboard players operation @e[type=armor_stand,tag=sc.mine,limit=1] sc.link = @s sc.id
ride @s mount @e[type=armor_stand,tag=sc.mine,limit=1]
tag @e[type=armor_stand,tag=sc.mine] remove sc.mine
tag @s add sc.seated
