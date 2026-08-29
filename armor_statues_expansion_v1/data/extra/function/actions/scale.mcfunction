# 0.10
execute if score @s as_scale matches 10 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Attributes:[{Name:"minecraft:scale",Base:0.10f}]}
execute if score @s as_scale matches 10 at @s run attribute @e[type=villager,tag=mace_shield,distance=..1,limit=1] minecraft:scale base set 0.10

# 0.25
execute if score @s as_scale matches 25 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Attributes:[{Name:"minecraft:scale",Base:0.25f}]}
execute if score @s as_scale matches 25 at @s run attribute @e[type=villager,tag=mace_shield,distance=..1,limit=1] minecraft:scale base set 0.25

# 0.50
execute if score @s as_scale matches 50 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Attributes:[{Name:"minecraft:scale",Base:0.50f}]}
execute if score @s as_scale matches 50 at @s run attribute @e[type=villager,tag=mace_shield,distance=..1,limit=1] minecraft:scale base set 0.50

# 0.75
execute if score @s as_scale matches 75 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Attributes:[{Name:"minecraft:scale",Base:0.75f}]}
execute if score @s as_scale matches 75 at @s run attribute @e[type=villager,tag=mace_shield,distance=..1,limit=1] minecraft:scale base set 0.75

# 1.00
execute if score @s as_scale matches 100 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Attributes:[{Name:"minecraft:scale",Base:1.00f}]}
execute if score @s as_scale matches 100 at @s run attribute @e[type=villager,tag=mace_shield,distance=..1,limit=1] minecraft:scale base set 1.00

# 1.50
execute if score @s as_scale matches 150 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Attributes:[{Name:"minecraft:scale",Base:1.50f}]}
execute if score @s as_scale matches 150 at @s run attribute @e[type=villager,tag=mace_shield,distance=..1,limit=1] minecraft:scale base set 1.50

# 2.00
execute if score @s as_scale matches 200 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Attributes:[{Name:"minecraft:scale",Base:2.00f}]}
execute if score @s as_scale matches 200 at @s run attribute @e[type=villager,tag=mace_shield,distance=..1,limit=1] minecraft:scale base set 2.00

# 3.00
execute if score @s as_scale matches 300 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Attributes:[{Name:"minecraft:scale",Base:3.00f}]}
execute if score @s as_scale matches 300 at @s run attribute @e[type=villager,tag=mace_shield,distance=..1,limit=1] minecraft:scale base set 3.00

scoreboard players reset @s as_scale