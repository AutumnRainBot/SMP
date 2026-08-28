execute store result score @s scimitar.procA run random value 0..4
execute if score @s scimitar.procA matches 0 run return fail

execute store result score @s scimitar.rngA run random value 0..7

execute if score @s scimitar.rngA matches 0 run effect give @s minecraft:speed 5 0
execute if score @s scimitar.rngA matches 1 run effect give @s minecraft:strength 5 0
execute if score @s scimitar.rngA matches 2 run effect give @s minecraft:regeneration 5 0
execute if score @s scimitar.rngA matches 3 run effect give @s minecraft:jump_boost 5 1
execute if score @s scimitar.rngA matches 4 run effect give @s minecraft:resistance 5 0
execute if score @s scimitar.rngA matches 5 run effect give @s minecraft:haste 5 0
execute if score @s scimitar.rngA matches 6 run effect give @s minecraft:absorption 5 0
execute if score @s scimitar.rngA matches 7 run effect give @s minecraft:fire_resistance 5 0
