scoreboard players set @s soul_beam_charge 0
scoreboard players set @s soul_beam_ray 0

execute at @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 1
execute at @s run kill @e[type=minecraft:arrow,distance=..3,sort=nearest,limit=1]
execute at @s anchored eyes positioned ^ ^ ^0.5 run function crafting:soul_beam_ray
