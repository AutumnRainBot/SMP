# Restore the mobGriefing setting after the creeper has exploded.
execute if score $little_boy_restore crafting.little_boy_restore matches 1 run gamerule mobGriefing true
execute if score $little_boy_restore crafting.little_boy_restore matches 0 run gamerule mobGriefing false
scoreboard players set $little_boy_restore crafting.little_boy_restore 0
