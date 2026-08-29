# Stop after 40 blocks
execute if score @s soul_beam_ray matches 80.. run return 0

# Stop when hitting a solid block
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Draw the beam
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

# Damage mobs near the beam
execute as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] at @s run damage @s 10 minecraft:sonic_boom

# Remember which mobs were hit
execute as @e[distance=..1.25,type=!minecraft:player,tag=!soul_beam_hit] run tag @s add soul_beam_hit

# Move forward along the shooter's looking direction
scoreboard players add @s soul_beam_ray 1
execute positioned ^ ^ ^0.5 run function crafting:soul_beam_ray
