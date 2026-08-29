# Reset the advancement so it can be triggered again.
advancement revoke @s only crafting:coward_riptide_use

# Launch the player in the direction they are looking.
execute as @s at @s run tp @s ^ ^ ^0.01

# Apply the Riptide-style forward movement.
execute as @s at @s run velocity @s ^ ^ ^3

# Play the Riptide sound.
playsound minecraft:item.trident.riptide_3 player @s ~ ~ ~ 1 1

# Give temporary fall-damage protection for this Riptide launch.
effect give @s minecraft:slow_falling 3 0 true
