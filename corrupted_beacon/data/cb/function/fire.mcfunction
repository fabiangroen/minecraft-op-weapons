execute unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{corrupted_beacon:1b}] run return run function cb:cancel

scoreboard players remove @s cb.timer 1

# Charge-up phase (timer 110..81): rise
execute if score @s cb.timer matches 81.. run return run function cb:charge

# Beam phase (timer 80..0): hover and fire
effect clear @s minecraft:levitation
attribute @s minecraft:gravity modifier add cb:hover -1 add_multiplied_total
effect give @s minecraft:slowness 1 3 true

scoreboard players operation #t cb.dist = @s cb.timer
scoreboard players operation #t cb.dist %= #10 cb.dist
execute if score #t cb.dist matches 0 run tag @s add cb.dmg

playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 0.4 1.5
particle minecraft:dragon_breath ~ ~0.1 ~ 0.6 0.05 0.6 0.02 8 force
particle minecraft:portal ~ ~0.2 ~ 0.7 0.1 0.7 0.6 8 force

tag @s add cb.caster
scoreboard players set #d cb.dist 0
execute anchored eyes positioned ^-0.45 ^-0.55 ^1.5 facing ^0.45 ^0.55 ^13.5 run function cb:ray

execute store result storage cb:tmp len float 0.5 run scoreboard players get #d cb.dist
execute anchored eyes positioned ^-0.45 ^-0.55 ^1.5 facing ^0.45 ^0.55 ^13.5 run function cb:beam with storage cb:tmp

execute if entity @e[tag=cb.hit,limit=1] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.7 1
tag @e remove cb.hit
tag @s remove cb.caster
tag @s remove cb.dmg
execute if score @s cb.timer matches 0 run function cb:finish
