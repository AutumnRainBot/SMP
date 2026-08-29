scoreboard players add @a crafting.lunge_cd 0
scoreboard players remove @a[scores={crafting.lunge_cd=1..}] crafting.lunge_cd 1
execute as @a[scores={soul_beam_charge=20..}] if items entity @s weapon.mainhand minecraft:bow[custom_data~{soul_beam:true}] run scoreboard players set @s soul_beam_charge 20
