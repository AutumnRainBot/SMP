# Protect every player from the lightning strike.
effect give @a minecraft:resistance 1 4 true
effect give @a minecraft:fire_resistance 5 0 true

# Strike every player on the server.
execute as @a at @s run summon minecraft:lightning_bolt ~ ~ ~

# Announce the crafting to everyone.
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
tellraw @a [{"selector":"@s"},{"text":" has crafted the ","color":"gray"},{"text":"Mjöllnir","color":"aqua","italic":false}]

# Allow the recipe-crafting event to trigger again for the same player.
advancement revoke @s only crafting:craft_mjollnir
