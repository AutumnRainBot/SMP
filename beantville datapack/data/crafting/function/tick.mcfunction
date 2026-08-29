scoreboard players add @a crafting.lunge_cd 0
scoreboard players remove @a[scores={crafting.lunge_cd=1..}] crafting.lunge_cd 1
execute as @a[scores={soul_beam_charge=20..}] if items entity @s weapon.mainhand minecraft:bow[custom_data~{soul_beam:true}] run scoreboard players set @s soul_beam_charge 20
execute as @a[scores={soul_beam_shot=1..,soul_beam_charge=20}] if items entity @s weapon.mainhand minecraft:bow[custom_data~{soul_beam:true}] run function crafting:soul_beam_fire
scoreboard players reset @a soul_beam_shot
