scoreboard players add @a crafting.lunge_cd 0
scoreboard players remove @a[scores={crafting.lunge_cd=1..}] crafting.lunge_cd 1

# Clear entities hit by the previous Soul Beam
tag @e[tag=soul_beam_hit] remove soul_beam_hit

