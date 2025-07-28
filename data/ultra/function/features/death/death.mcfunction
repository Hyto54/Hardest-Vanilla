#if player has died then spectator mode and message 'you have died'
execute as @a if score @s DeathCount matches 1.. run gamemode spectator @s
execute as @a if score @s DeathCount matches 1.. run tellraw @s {"text":"You have died !","bold":true,"color":"red"}
execute as @a if score @s DeathCount matches 1.. run scoreboard players set @s DeathCount 0
