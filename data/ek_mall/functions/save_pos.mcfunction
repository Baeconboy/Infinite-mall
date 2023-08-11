execute store result score @s ek_x run data get entity @s Pos[0] 1
scoreboard players operation @s ek_offset_x = @s ek_x
scoreboard players operation @s ek_offset_x %= C_16 ek_RNG_Constant
scoreboard players operation @s ek_x -= @s ek_offset_x
scoreboard players operation @s ek_x *= C_10 ek_RNG_Constant

execute store result storage ek_mall:chunk Pos[0] double 0.1 run scoreboard players operation @s ek_x += C_5 ek_RNG_Constant

execute store result score @s ek_z run data get entity @s Pos[2] 1
scoreboard players operation @s ek_offset_z = @s ek_z
scoreboard players operation @s ek_offset_z %= C_16 ek_RNG_Constant
scoreboard players operation @s ek_z -= @s ek_offset_z
scoreboard players operation @s ek_z *= C_10 ek_RNG_Constant

execute store result storage ek_mall:chunk Pos[2] double 0.1 run scoreboard players operation @s ek_z += C_5 ek_RNG_Constant
