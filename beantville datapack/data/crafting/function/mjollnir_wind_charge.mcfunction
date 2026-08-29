# Reset the right-click advancement so it can trigger again.
advancement revoke @s only crafting:mjollnir_wind_charge

# Launch a Wind Charge straight upward from directly underneath the player.
summon minecraft:wind_charge ~ ~-0.45 ~ {Motion:[0.0d,1.0d,0.0d],Tags:["mjollnir_wind"]}

# Make the summoned Wind Charge belong to the player who activated Mjollnir.
data modify entity @e[type=minecraft:wind_charge,tag=mjollnir_wind,sort=nearest,limit=1] Owner set from entity @s UUID

tag @e[type=minecraft:wind_charge,tag=mjollnir_wind,sort=nearest,limit=1] remove mjollnir_wind

# Cooldown.
scoreboard players set @s mjollnir.wind_cd 10
