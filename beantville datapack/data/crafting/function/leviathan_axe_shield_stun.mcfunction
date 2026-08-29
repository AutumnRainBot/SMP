# Spawn the Leviathan Axe's support web at the stunned player's feet.
setblock ~ ~ ~ minecraft:cobweb

# Apply Mining Fatigue III for 5 seconds (100 ticks).
effect give @s minecraft:mining_fatigue 5 2 true

# Allow the effect to trigger again on the next shield stun.
advancement revoke @s only crafting:leviathan_axe_shield_stun
