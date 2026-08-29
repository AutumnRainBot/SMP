scoreboard players add @a crafting.lunge_cd 0
scoreboard players remove @a[scores={crafting.lunge_cd=1..}] crafting.lunge_cd 1

# Clear entities hit by the previous Soul Beam
tag @e[tag=soul_beam_hit] remove soul_beam_hit

# Mjollnir wind charge cooldown
scoreboard players add @a mjollnir.wind_cd 0
scoreboard players remove @a[scores={mjollnir.wind_cd=1..}] mjollnir.wind_cd 1

# Coward Trident - restore the right-click component after use
execute as @a if items entity @s weapon.mainhand minecraft:trident[custom_data~{coward_trident:true}] unless items entity @s weapon.mainhand minecraft:trident[consumable] run item modify entity @s weapon.mainhand crafting:coward_restore_use
