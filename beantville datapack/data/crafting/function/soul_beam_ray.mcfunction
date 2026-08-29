# Maximum range: 40 blocks
execute if score @s soul_beam_ray matches 80.. run return 0

# Stop if the beam hits a non-replaceable block
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Soul Beam visual
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

# Hit entities near the current ray position
execute as @e[distance=..1.5,tag=!soul_beam_hit,tag=!soul_beam_owner] run function crafting:soul_beam_hit

# Advance the ray by 0.5 blocks
scoreboard players add @s soul_beam_ray 1
execute positioned ^ ^ ^0.5 run function crafting:soul_beam_ray
