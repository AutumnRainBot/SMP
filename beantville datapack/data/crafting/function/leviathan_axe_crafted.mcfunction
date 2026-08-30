playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
tellraw @a [{"selector":"@s"},{"text":" has crafted the ","color":"gray"},{"text":"Leviathan Axe","color":"red","italic":false}]
advancement revoke @s only crafting:leviathan_axe_crafted
