effect give @s minecraft:resistance 5 4 true
# Spawn a primed TNT on every player with a 0.5 second fuse.
execute as @a at @s run summon minecraft:tnt ~ ~ ~ {Fuse:10s}

# Announce the crafting to everyone.
tellraw @a [{"selector":"@s"},{"text":" has crafted the ","color":"gray"},{"text":"Little Boy","color":"red","italic":false}]

# Allow the crafting event to trigger again.
advancement revoke @s only crafting:craft_little_boy
