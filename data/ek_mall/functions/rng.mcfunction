scoreboard players add RNGseed ek_RNG_Variable 1
execute store result score RNG ek_RNG_Variable run time query gametime
scoreboard players operation RNG ek_RNG_Variable *= RNGseed ek_RNG_Variable
scoreboard players operation RNG ek_RNG_Variable *= C_314159 ek_RNG_Constant
scoreboard players operation RNG ek_RNG_Variable *= C_2718281 ek_RNG_Constant
scoreboard players operation RNG ek_RNG_Variable *= RNG ek_RNG_Variable
scoreboard players operation RNG ek_RNG_Variable /= C_1000 ek_RNG_Constant
scoreboard players operation RNG ek_RNG_Variable *= C_314159 ek_RNG_Constant
scoreboard players operation RNG ek_RNG_Variable *= C_2718281 ek_RNG_Constant

scoreboard players operation RNG ek_RNG_Variable %= C_30 ek_RNG_Constant