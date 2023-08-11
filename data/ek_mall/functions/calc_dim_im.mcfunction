#execute positioned ~ 65 ~ run forceload add ~ ~
execute positioned ~ 65 ~ unless entity @e[tag=ek_mall_portal, distance=..32] unless entity @e[tag=ek_tileGenMarker, distance=..32] summon minecraft:marker run function ek_mall:portal_new_tile
execute positioned ~ 65 ~ unless entity @e[tag=ek_mall_portal, distance=..32] if entity @e[tag=ek_tileGenMarker, distance=..32] at @e[tag=ek_tileGenMarker, distance=..32,sort=nearest,limit=1] positioned ~8 ~ ~8 run function ek_mall:spawn_portal_structure

execute positioned ~ 65 ~ as @e[tag=ek_mall_portal, distance=..32, limit=1] in minecraft:overworld run tp @e[sort=nearest, limit=1, tag=ek_port] @s
scoreboard players set @e[tag=ek_port] ek_portal_cooldown 40
tag @e[scores={ek_portal_cooldown=1..}] remove ek_port


execute positioned ~ 65 ~ run forceload remove ~ ~
