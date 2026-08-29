scoreboard players add @a crafting.lunge_cd 20
scoreboard players remove @a[scores={crafting.lunge_cd=1..}] crafting.lunge_cd 1

# Soul Beam: fully charged shot released
execute as @a[scores={soul_beam_shots=1..,soul_beam_charge=20}] run function crafting:soul_beam_fire

# Soul Beam: release before full charge
execute as @a[scores={soul_beam_shots=1..,soul_beam_charge=1..19}] run scoreboard players set @s soul_beam_charge 0

# Reset bow-use statistic
scoreboard players set @a[scores={soul_beam_shots=1..}] soul_beam_shots 0

# Clear entities hit by the previous Soul Beam
tag @e[tag=soul_beam_hit] remove soul_beam_hit

