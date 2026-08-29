playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 1 1
effect give @a minecraft:darkness 12 0 true
tellraw @a [{"selector":"@s"},{"text":" has crafted the ","color":"gray"},{"text":"Soul Beam","color":"blue","italic":false}]
advancement revoke @s only crafting:craft_soul_beam
