scoreboard players set @s soul_beam_charge 0
scoreboard players set @s soul_beam_ray 0

playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 1

execute at @s anchored eyes positioned ^ ^ ^0.5 run function crafting:soul_beam_ray
