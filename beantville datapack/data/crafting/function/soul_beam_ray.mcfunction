# Maximum 40 block range
execute if score @s soul_beam_ray matches 80.. run return 0

# Stop at blocks
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Visual
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

# Damage mobs at the current ray position
execute as @e[type=!minecraft:player,distance=..1.25,tag=!soul_beam_hit] run damage @s 10 minecraft:sonic_boom

# Mark them as hit
execute as @e[type=!minecraft:player,distance=..1.25,tag=!soul_beam_hit] run tag @s add soul_beam_hit

# Advance
scoreboard players add @s soul_beam_ray 1
execute positioned ^ ^ ^0.5 run function crafting:soul_beam_ray
