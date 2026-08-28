particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 1
tellraw @a [{"selector":"@s"},{"text":" has crafted the ","color":"gray"},{"text":"7 Seas Scimitar","color":"blue","italic":false}]
advancement revoke @s only crafting:craft_scimitar
