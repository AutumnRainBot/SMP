# Maximum range: 40 blocks
execute if score @s soul_beam_ray matches 80.. run return 0

# Stop if the beam hits a non-replaceable block
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Soul Beam visual
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

# Damage nearby entities that haven't already been hit
execute as @e[distance=..1.5,tag=!soul_beam_hit] run damage @s 10 minecraft:sonic_boom

# Mark damaged entities so they are only hit once
execute as @e[distance=..1.5,tag=!soul_beam_hit] run tag @s add soul_beam_hit

# Advance the ray by 0.5 blocks
scoreboard players add @s soul_beam_ray 1
execute positioned ^ ^ ^0.5 run function crafting:soul_beam_ray
