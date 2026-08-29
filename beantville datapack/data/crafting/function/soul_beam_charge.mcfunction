advancement revoke @s only crafting:soul_beam_using
scoreboard players add @s soul_beam_charge 1
execute if score @s soul_beam_charge matches 21.. run scoreboard players set @s soul_beam_charge 20
