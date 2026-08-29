# ON
execute if score @s as_invul matches 1 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Invulnerable:1b,DisabledSlots:4144959}
execute if score @s as_invul matches 1 run title @s actionbar {"text":"Invulnerability: ON","color":"green"}

# OFF
execute if score @s as_invul matches 2 at @s as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] run data merge entity @s {Invulnerable:0b,DisabledSlots:0}
execute if score @s as_invul matches 2 run title @s actionbar {"text":"Invulnerability: OFF","color":"yellow"}

scoreboard players reset @s as_invul