execute positioned ~ ~1.5 ~ run particle dust 0.110 0.584 1.000 1 ~ ~ ~ 0.1 0.5 0.3 0 50 force

execute positioned ~ ~ ~ if entity @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] run tag @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] add ek_port
execute positioned ~ ~1 ~ if entity @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] run tag @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] add ek_port
execute positioned ~ ~2 ~ if entity @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] run tag @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] add ek_port
execute positioned ~1 ~ ~ if entity @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] run tag @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] add ek_port
execute positioned ~1 ~1 ~ if entity @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] run tag @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] add ek_port
execute positioned ~1 ~2 ~ if entity @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] run tag @e[type=minecraft:player,scores={ek_portal_cooldown=0}, distance=..0.6] add ek_port

execute positioned ~ ~ ~ if entity @e[type=minecraft:player, distance=..0.6] run scoreboard players set @e[type=minecraft:player, distance=..0.6] ek_portal_cooldown 40
execute positioned ~ ~1 ~ if entity @e[type=minecraft:player, distance=..0.6] run scoreboard players set @e[type=minecraft:player, distance=..0.6] ek_portal_cooldown 40
execute positioned ~ ~2 ~ if entity @e[type=minecraft:player, distance=..0.6] run scoreboard players set @e[type=minecraft:player, distance=..0.6] ek_portal_cooldown 40
execute positioned ~1 ~ ~ if entity @e[type=minecraft:player, distance=..0.6] run scoreboard players set @e[type=minecraft:player, distance=..0.6] ek_portal_cooldown 40
execute positioned ~1 ~1 ~ if entity @e[type=minecraft:player, distance=..0.6] run scoreboard players set @e[type=minecraft:player, distance=..0.6] ek_portal_cooldown 40
execute positioned ~1 ~2 ~ if entity @e[type=minecraft:player, distance=..0.6] run scoreboard players set @e[type=minecraft:player, distance=..0.6] ek_portal_cooldown 40

execute if dimension minecraft:overworld positioned ~ ~1.5 ~ if entity @e[type=minecraft:player, distance=..4] in ek_mall:ek_mall positioned ~ 65 ~ run forceload add ~ ~
execute if dimension minecraft:overworld positioned ~ ~1.5 ~ if entity @e[tag=ek_port, distance=..4] in ek_mall:ek_mall run function ek_mall:calc_dim_im
execute if dimension minecraft:overworld positioned ~ ~1.5 ~ unless entity @e[type=minecraft:player, distance=..4] in ek_mall:ek_mall positioned ~ 65 ~ run forceload remove ~ ~

execute if dimension ek_mall:ek_mall positioned ~ ~1.5 ~ if entity @e[type=minecraft:player, distance=..4] in minecraft:overworld run forceload add ~ ~
execute if dimension ek_mall:ek_mall positioned ~ ~1.5 ~ if entity @e[tag=ek_port, distance=..4] in minecraft:overworld run function ek_mall:calc_dim_ow
execute if dimension ek_mall:ek_mall positioned ~ ~1.5 ~ unless entity @e[type=minecraft:player, distance=..4] in minecraft:overworld run forceload remove ~ ~


#execute if dimension minecraft:overworld positioned ~ ~1.5 ~ if entity @e[tag=ek_port, distance=..4] in ek_mall:ek_mall run 
execute if dimension ek_mall:ek_mall positioned ~ ~ ~-.5 unless predicate ek_mall:z_portal in minecraft:overworld run forceload remove ~ ~
execute if dimension minecraft:overworld positioned ~ ~ ~-.5 unless predicate ek_mall:z_portal in ek_mall:ek_mall run forceload remove ~ ~
execute positioned ~ ~ ~-.5 unless predicate ek_mall:z_portal run kill @s

tag @e[scores={ek_portal_cooldown=1..}] remove ek_port
