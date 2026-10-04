# Next position must fit the player (feet, torso, head) and not be lava. Checks use world-up so pitched dashes work.
execute positioned ^ ^ ^1 unless block ~ ~ ~ #minecraft:replaceable run return 0
execute positioned ^ ^ ^1 unless block ~ ~1 ~ #minecraft:replaceable run return 0
execute positioned ^ ^ ^1 unless block ~ ~1.8 ~ #minecraft:replaceable run return 0
execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:lava run return 0
execute positioned ^ ^ ^1 run function kt:dash_advance
