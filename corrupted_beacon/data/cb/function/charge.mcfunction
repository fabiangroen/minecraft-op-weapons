# Rise fast, then ease off for the last 10 ticks so little upward speed carries into the hover
effect clear @s minecraft:levitation
function cb:orbit
execute if score @s cb.timer matches 91.. run effect give @s minecraft:levitation 1 3 true
execute if score @s cb.timer matches ..90 run effect give @s minecraft:levitation 1 0 true
particle minecraft:end_rod ~ ~0.1 ~ 0.7 0.05 0.7 0.02 12 force
particle minecraft:dragon_breath ~ ~0.05 ~ 0.9 0 0.9 0.01 20 force
particle minecraft:portal ~ ~0.2 ~ 0.7 0.1 0.7 0.5 12 force
