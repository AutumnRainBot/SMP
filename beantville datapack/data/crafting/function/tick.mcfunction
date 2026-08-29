scoreboard players add @a crafting.lunge_cd 0
scoreboard players remove @a[scores={crafting.lunge_cd=1..}] crafting.lunge_cd 1
# Soul Beam charge cap
scoreboard players set @a[scores={soul_beam_charge=21..}] soul_beam_charge 20
# Fire Soul Beam when a fully charged bow is released
execute as @a[scores={soul_beam_shots=1..,soul_beam_charge=20}] run function crafting:soul_beam_fire
# Reset charge if the player releases the bow before full charge
scoreboard players set @a[scores={soul_beam_shots=1..,soul_beam_charge=1..19}] soul_beam_charge 0
# Reset bow-use statistic
scoreboard players set @a[scores={soul_beam_shots=1..}] soul_beam_shots 0
