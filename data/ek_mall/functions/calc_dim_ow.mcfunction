#execute positioned ~ 65 ~ run forceload add ~ ~
execute positioned over world_surface unless entity @e[tag=ek_mall_portal, distance=..32] positioned ~ ~-1 ~ run function ek_mall:spawn_portal_structure

execute positioned over world_surface as @e[tag=ek_mall_portal, distance=..32, limit=1] in ek_mall:ek_mall run tp @e[sort=nearest, limit=1, tag=ek_port] @s
scoreboard players set @e[tag=ek_port] ek_portal_cooldown 40
tag @e[scores={ek_portal_cooldown=1..}] remove ek_port

execute positioned ~ 65 ~ run forceload remove ~ ~
