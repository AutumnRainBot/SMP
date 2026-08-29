playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 1
effect give @s minecraft:blindness 5 0
tellraw @a [{"selector":"@s"},{"text":" has crafted the ","color":"gray"},{"text":"Soul Beam","color":"blue","italic":false}]
advancement revoke @s only crafting:craft_soul_beam
