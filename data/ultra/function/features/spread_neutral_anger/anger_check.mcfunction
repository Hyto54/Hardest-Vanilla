#set scoreboard 'AngryMob' at 1 for every angry neutral mob
execute as @e[type=#ultra:neutral] if data entity @s AngryAt run scoreboard players set @s AngryMob 1
#set scoreboard 'AngryMob' at 0 for every non-angry neutral mob
execute as @e[type=#ultra:neutral] unless data entity @s AngryAt run scoreboard players set @s AngryMob 0
#spread anger to nearby neutral mob
execute at @e[scores={AngryMob=1}] as @e[type=#ultra:neutral, scores={AngryMob=0}, distance=..30] if entity @p[distance=..20] run data modify entity @s AngryAt set from entity @p[distance=..30, limit=1, sort=nearest] UUID


