#function ek_mall:save_pos
#data modify entity @e[tag=ek_tileGenMarker,tag=ek_pt,sort=nearest,limit=1] Pos set from storage ek_mall:chunk Pos
#execute as @e[tag=ek_tileGenMarker,tag=ek_pt,sort=nearest] at @s run function ek_mall:step
