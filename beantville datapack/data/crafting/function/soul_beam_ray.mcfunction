# Stop at 40 blocks
execute if score @s soul_beam_ray matches 40.. run return 0

# Stop if we hit a solid block
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Beam particle
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

# Damage entities
execute as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run damage @s 10 minecraft:sonic_boom

# Mark entities as hit
execute as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run tag @s add soul_beam_hit

# Move forward
scoreboard players add @s soul_beam_ray 1
positioned ^ ^ ^0.75 run function crafting:soul_beam_ray
