# Stop when we hit a solid block
execute if block ~ ~ ~ #minecraft:replaceable run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

execute if block ~ ~ ~ #minecraft:replaceable as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run damage @s 10 minecraft:sonic_boom

execute if block ~ ~ ~ as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run tag @s add soul_beam_hit

execute if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^0.75 run function crafting:soul_beam_ray
