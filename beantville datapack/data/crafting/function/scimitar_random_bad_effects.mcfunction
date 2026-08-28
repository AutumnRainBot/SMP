execute store result score @s scimitar.proc run random value 0..1
execute if score @s scimitar.proc matches 0 run return fail

execute store result score @s scimitar.rng run random value 0..7


execute if score @s scimitar.rng matches 0 run effect give @s minecraft:speed 5 0
execute if score @s scimitar.rng matches 1 run effect give @s minecraft:strength 5 0
execute if score @s scimitar.rng matches 2 run effect give @s minecraft:regeneration 5 0
execute if score @s scimitar.rng matches 3 run effect give @s minecraft:jump_boost 5 1
execute if score @s scimitar.rng matches 4 run effect give @s minecraft:resistance 5 0
execute if score @s scimitar.rng matches 5 run effect give @s minecraft:haste 5 0
execute if score @s scimitar.rng matches 6 run effect give @s minecraft:absorption 5 0
execute if score @s scimitar.rng matches 7 run effect give @s minecraft:fire_resistance 5 0
