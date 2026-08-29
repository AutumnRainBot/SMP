# Always reset the advancement so right-click can be detected again.
advancement revoke @s only crafting:mjollnir_wind_charge

# Only activate when the Mjollnir cooldown has reached 0.
execute if score @s mjollnir.wind_cd matches 0 run summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0.0d,-0.1d,0.0d],Tags:["mjollnir_wind"]}

# Start a 10-tick cooldown only when the ability actually fired.
execute if score @s mjollnir.wind_cd matches 0 run scoreboard players set @s mjollnir.wind_cd 10
