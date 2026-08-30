# Protect everyone from the explosion
effect give @a minecraft:resistance 5 4 true

# Spawn TNT on every player with a 0.5 second fuse
execute as @a at @s run summon minecraft:tnt ~ ~ ~ {Fuse:10s}

# Achievement sound for everyone
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

# Announce the crafting
tellraw @a [{"selector":"@s"},{"text":" has crafted the ","color":"gray"},{"text":"Little Boy","color":"red","italic":false}]

# Allow the crafting advancement to trigger again
advancement revoke @s only crafting:craft_little_boy
