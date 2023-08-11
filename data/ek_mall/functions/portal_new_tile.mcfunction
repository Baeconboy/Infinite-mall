tag @s add ek_tileGenMarker
#tag @s add ek_pt
execute at @s run function ek_mall:save_pos
data modify entity @s Pos set from storage ek_mall:chunk Pos
#execute at @s if entity @e[tag=ek_tileGenMarker, tag=!ek_pt,distance=..0.5] run kill @s
execute at @s run function ek_mall:step

