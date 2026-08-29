# Stop if we've hit a non-replaceable block
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Beam visual
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

# Find entities at this point and damage/tag them
execute as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run damage @s 10 minecraft:sonic_boom
execute as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run tag @s add soul_beam_hit

# Continue the beam
positioned ^ ^ ^0.75 run function crafting:soul_beam_ray
