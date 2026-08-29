scoreboard players set @s soul_beam_charge 0

playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 1

# Start the beam at the player's eyes
execute anchored eyes positioned ^ ^ ^0.5 run function crafting:soul_beam_ray
tag @e[tag=soul_beam_hit] remove soul_beam_hit
