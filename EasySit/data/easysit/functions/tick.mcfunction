scoreboard players enable @a[tag=!player.sitting] sit
execute as @a[tag=!player.sitting] at @s if score @s sit matches 1.. if entity @s[nbt={OnGround:false}] run function easysit:messages/sit_on_air
execute as @a[tag=!player.sitting] at @s if score @s sit matches 1.. if entity @s[nbt={OnGround:false}] run scoreboard players set @s sit 0
execute as @a[tag=!player.sitting] at @s if score @s sit matches 1.. run function easysit:sit
execute as @e[tag=sit.chair.sitting] unless function easysit:detect_passenger run kill @s
execute as @e[tag=player.sitting] unless function easysit:detect_vehicle run tag @s remove player.sitting