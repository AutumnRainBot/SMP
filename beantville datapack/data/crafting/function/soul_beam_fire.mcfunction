# Reset charge and ray counter
scoreboard players set @s soul_beam_charge 0
scoreboard players set @s soul_beam_ray 0

# Mark the player who fired this Soul Beam
tag @s add soul_beam_owner

# Warden sonic boom sound at the shooter
execute at @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 1

# Remove the vanilla arrow fired by the Soul Beam
execute at @s run kill @e[type=minecraft:arrow,distance=..5,sort=nearest,limit=1]

# Start the Soul Beam at the shooter's eyes
execute at @s anchored eyes positioned ^ ^ ^0.5 run function crafting:soul_beam_ray

# Remove the owner tag after the beam finishes
tag @s remove soul_beam_owner
