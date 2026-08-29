# Always reset the advancement so another right click can be detected.
advancement revoke @s only crafting:mjollnir_wind_charge

# 10-tick cooldown prevents repeated launches while holding right click.
execute if score @s mjollnir.wind_cd matches 0 run execute at @s run summon minecraft:wind_charge ~ ~-0.5 ~ {power:[0.0d,-0.1d,0.0d]}
execute if score @s mjollnir.wind_cd matches 0 run scoreboard players set @s mjollnir.wind_cd 10
