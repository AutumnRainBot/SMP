# Reset charge
scoreboard players set @s soul_beam_charge 0

# Reset ray distance
scoreboard players set @s soul_beam_ray 0

# Warden sound
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 1

# Start ray at the player's eyes
execute anchored eyes positioned ^ ^ ^0.5 run function crafting:soul_beam_ray

# Remove temporary hit tags after the beam is finished
tag @e[tag=soul_beam_hit] remove soul_beam_hit
