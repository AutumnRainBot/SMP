# Give everyone Resistance V so the Little Boy blast cannot kill them.
effect give @a minecraft:resistance 2 4 true

# Remember the current mobGriefing setting so it can be restored after the blast.
scoreboard players set $little_boy_restore crafting.little_boy_restore 0
execute if gamerule mobGriefing run scoreboard players set $little_boy_restore crafting.little_boy_restore 1

# Spawn a primed TNT at every player with a 0.5 second fuse (10 ticks).
execute as @a at @s run summon minecraft:tnt ~ ~ ~ {fuse:10,explosion_power:4,Tags:["little_boy_tnt"]}

playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
tellraw @a [{"selector":"@s"},{"text":" has crafted the ","color":"gray"},{"text":"Little Boy","color":"red","italic":false}]

# Allow the recipe-crafting event to trigger again.
advancement revoke @s only crafting:craft_little_boy
