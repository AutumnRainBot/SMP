execute store result score @s scimitar.procA run random value 0..4
execute if score @s scimitar.procA matches 0 run return fail

execute store result score @s scimitar.rngA run random value 0..2

execute if score @s scimitar.rngA matches 0 run effect give @s minecraft:poison 5 1
execute if score @s scimitar.rngA matches 1 run effect give @s minecraft:weakness 5 1
execute if score @s scimitar.rngA matches 2 run effect give @s minecraft:blindness 5 0
