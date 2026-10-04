# Recreate sc.use so its criterion is always correct
scoreboard objectives remove sc.use
scoreboard objectives add sc.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add sc.stage dummy
scoreboard objectives add sc.t dummy
scoreboard objectives add sc.cd dummy
scoreboard objectives add sc.id dummy
scoreboard objectives add sc.link dummy
scoreboard objectives add sc.ttl dummy
scoreboard objectives add sc.dist dummy
scoreboard objectives add sc.fall dummy
scoreboard objectives add sc.y dummy
scoreboard players set #5 sc.dist 5
scoreboard players set #20 sc.dist 20
kill @e[type=armor_stand,tag=sc.seat]
# Clear leftovers from a cast interrupted by a restart
execute as @a run function sc:unroot
execute as @a run function sc:unhold
