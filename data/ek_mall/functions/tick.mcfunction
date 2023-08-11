execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~.5 ~ ~ 0 0 0.25 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~-.5 ~ ~ 0 0 0.25 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~.5 ~1 ~ 0 0 0.25 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~-.5 ~1 ~ 0 0 0.25 0 1 force

execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~ ~ ~.5 0.25 0 0 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~ ~ ~-.5 0.25 0 0 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~ ~1 ~.5 0.25 0 0 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~ ~1 ~-.5 0.25 0 0 0 1 force

execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~.5 ~.5 ~.5 0 0.25 0 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~-.5 ~.5 ~-.5 0 0.25 0 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~.5 ~.5 ~-.5 0 0.25 0 0 1 force
execute as @p at @s at @e[tag=ek_tileGenMarker, distance=..50] run particle flame ~-.5 ~.5 ~.5 0 0.25 0 0 1 force

execute as @e[type=item,nbt={Item:{"id":"minecraft:emerald", Count:1b}}] run tag @s add ek_emerald

execute as @e[tag=ek_emerald,nbt={Item:{Count:1b}}] at @s store result score @s ek_portal_result run function ek_mall:portal_check
execute as @e[tag=ek_emerald,nbt={Item:{Count:1b}}] at @s align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=ek_mall_portal_x, distance=..1] unless entity @e[tag=ek_mall_portal_z, distance=..1] if score @s ek_portal_result matches 1 run function ek_mall:spawn_portal_x 
execute as @e[tag=ek_emerald,nbt={Item:{Count:1b}}] at @s align xyz positioned ~-.5 ~ ~.5 unless entity @e[tag=ek_mall_portal_x, distance=..1] unless entity @e[tag=ek_mall_portal_z, distance=..1] if score @s ek_portal_result matches 2 run function ek_mall:spawn_portal_x 
execute as @e[tag=ek_emerald,nbt={Item:{Count:1b}}] at @s align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=ek_mall_portal_x, distance=..1] unless entity @e[tag=ek_mall_portal_z, distance=..1] if score @s ek_portal_result matches 3 run function ek_mall:spawn_portal_z
execute as @e[tag=ek_emerald,nbt={Item:{Count:1b}}] at @s align xyz positioned ~.5 ~ ~-.5 unless entity @e[tag=ek_mall_portal_x, distance=..1] unless entity @e[tag=ek_mall_portal_z, distance=..1] if score @s ek_portal_result matches 4 run function ek_mall:spawn_portal_z 

execute as @e[tag=ek_mall_portal_x] at @s run function ek_mall:portal_function_x
execute as @e[tag=ek_mall_portal_z] at @s run function ek_mall:portal_function_z


execute as @e[tag=ek_tileGenMarker, tag=!ek_done] at @s if entity @e[type=player, distance=..100] run function ek_mall:step

#execute as @e[tag=ek_tileGenMarker, tag=!ek_done] at @s if score Step ek_step matches 20  run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:1",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",sizeX:16,sizeY:16,sizeZ:16}
#execute as @e[tag=ek_tileGenMarker, tag=!ek_done] at @s run setblock ~ ~1 ~ redstone_block
#tag @e[tag=ek_tileGenMarker, tag=!ek_done] add ek_done

execute as @e[scores={ek_portal_cooldown=1..}] run scoreboard players remove @s ek_portal_cooldown 1

execute as @e[type=item,nbt={Item:{"id":"minecraft:emerald"}}] run tag @s add ek_emerald