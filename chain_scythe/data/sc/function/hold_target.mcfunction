attribute @s minecraft:gravity modifier add sc:hold -1 add_multiplied_total
attribute @s minecraft:movement_speed modifier add sc:hold -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add sc:hold -1 add_multiplied_total
effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:glowing 1 0 true
# Force the target's camera onto the caster
tp @s ~ ~ ~ facing entity @a[tag=sc.me,limit=1] eyes
