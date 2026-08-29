# Replace the marked TNT on its final fuse tick with an instant creeper blast.
# mobGriefing is disabled only while this custom blast is occurring, so terrain is preserved.
execute if score $little_boy_restore crafting.little_boy_restore matches 1 run gamerule mobGriefing false
execute as @e[type=minecraft:tnt,tag=little_boy_tnt,nbt={fuse:1}] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0,ignited:true,ExplosionRadius:4,Tags:["little_boy_explosion"]}
kill @e[type=minecraft:tnt,tag=little_boy_tnt,nbt={fuse:1}]
