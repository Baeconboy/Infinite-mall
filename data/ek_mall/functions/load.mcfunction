#scoreboard objectives add ssmp_kills minecraft.custom:minecraft.player_kills
#replace with player kills!!
#scoreboard objectives add ssmp_deaths deathCount

#advancement grant @s only streaksmp:root

scoreboard objectives add ek_RNG_Constant dummy
scoreboard objectives add ek_RNG_Variable dummy
scoreboard objectives add ek_tiles dummy

execute unless score amount ek_tiles matches 1..30 run scoreboard players set C_30 ek_RNG_Constant 30
execute if score amount ek_tiles matches 1..30 run scoreboard players operation C_30 ek_RNG_Constant = amount ek_tiles

scoreboard players set C_1000 ek_RNG_Constant 1000
scoreboard players set C_314159 ek_RNG_Constant 314159
scoreboard players set C_2718281 ek_RNG_Constant 2718281
scoreboard players set C_5 ek_RNG_Constant 5
scoreboard players set C_10 ek_RNG_Constant 10
#scoreboard players set C_30 ek_RNG_Constant 30
scoreboard players set C_16 ek_RNG_Constant 16


scoreboard players set RNGseed ek_RNG_Variable 0

scoreboard objectives add ek_portal_cooldown dummy
scoreboard players set @a ek_portal_cooldown 0
scoreboard objectives add ek_portal_result dummy
scoreboard objectives add ek_x dummy
scoreboard objectives add ek_y dummy
scoreboard objectives add ek_z dummy
scoreboard objectives add ek_offset_x dummy
scoreboard objectives add ek_offset_y dummy
scoreboard objectives add ek_offset_z dummy

data modify storage ek_mall:chunk Pos set value [0.0d,64.0d,0.0d]

#execute in ek_mall:ek_mall run forceload add 0 0


tellraw @a {"text":" Infinite Mall v0.1 for 1.20.1 loaded successfully!","color":"green"}