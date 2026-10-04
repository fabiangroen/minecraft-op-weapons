# Release the target's hold and blast them downward with wind charges bursting on their head. Add or remove lines to change the force.
function sc:unhold
effect clear @s minecraft:slowness
summon minecraft:wind_charge ~ ~2.3 ~ {Motion:[0.0,-1.0,0.0]}
summon minecraft:wind_charge ~ ~2.3 ~ {Motion:[0.0,-1.0,0.0]}
summon minecraft:wind_charge ~ ~2.3 ~ {Motion:[0.0,-1.0,0.0]}
summon minecraft:wind_charge ~ ~2.3 ~ {Motion:[0.0,-1.0,0.0]}
summon minecraft:wind_charge ~ ~2.3 ~ {Motion:[0.0,-1.0,0.0]}
particle minecraft:large_smoke ~ ~1 ~ 0.3 0.6 0.3 0.05 15 force
