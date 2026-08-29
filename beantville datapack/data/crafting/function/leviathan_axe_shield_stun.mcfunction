# Spawn the Leviathan Axe's support web at the stunned player's feet.
setblock ~ ~ ~ minecraft:cobweb

# Allow the effect to trigger again on the next shield stun.
advancement revoke @s only crafting:leviathan_axe_shield_stun
