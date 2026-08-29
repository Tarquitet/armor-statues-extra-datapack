# ON
execute if score @s as_mace matches 1 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run tag @s add has_shield
execute if score @s as_mace matches 1 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] at @s run kill @e[type=villager,tag=mace_shield,distance=..1]
execute if score @s as_mace matches 1 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] at @s run summon villager ~ ~ ~ {NoAI:1b,Invisible:1b,Silent:1b,Tags:["mace_shield"],VillagerData:{profession:"nitwit"}}
execute if score @s as_mace matches 1 run title @s actionbar {"text":"Mace Shield: ON","color":"green"}

# OFF
execute if score @s as_mace matches 2 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run tag @s remove has_shield
execute if score @s as_mace matches 2 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] at @s run kill @e[type=villager,tag=mace_shield,distance=..1]
execute if score @s as_mace matches 2 run title @s actionbar {"text":"Mace Shield: OFF","color":"yellow"}

scoreboard players reset @s as_mace