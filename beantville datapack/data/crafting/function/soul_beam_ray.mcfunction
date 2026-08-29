# Maximum range: 40 blocks
execute if score @s soul_beam_ray matches 40.. run return 0

# Stop when the beam reaches a non-replaceable block
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Warden beam particle
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

# Damage nearby entities that haven't already been hit
execute as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run damage @s 10 minecraft:sonic_boom

# Mark those entities so they can't be hit again by this beam
execute as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run tag @s add soul_beam_hit

# Move the ray 0.5 blocks forward
scoreboard players add @s soul_beam_ray 1
positioned ^ ^ ^0.5 run function crafting:soul_beam_ray
