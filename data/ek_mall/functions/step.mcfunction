function ek_mall:pick_tile

execute positioned ~16 ~ ~ unless entity @e[tag=ek_tileGenMarker,distance=..0.5] run summon minecraft:marker ~ ~ ~ {Tags:["ek_tileGenMarker"]}
execute positioned ~-16 ~ ~ unless entity @e[tag=ek_tileGenMarker,distance=..0.5] run summon minecraft:marker ~ ~ ~ {Tags:["ek_tileGenMarker"]}
execute positioned ~ ~ ~16 unless entity @e[tag=ek_tileGenMarker,distance=..0.5] run summon minecraft:marker ~ ~ ~ {Tags:["ek_tileGenMarker"]}
execute positioned ~ ~ ~-16 unless entity @e[tag=ek_tileGenMarker,distance=..0.5] run summon minecraft:marker ~ ~ ~ {Tags:["ek_tileGenMarker"]}


tag @s add ek_done
