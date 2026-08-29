# Habilitar los triggers constantemente
scoreboard players enable @a as_invul
scoreboard players enable @a as_mace
scoreboard players enable @a as_scale

# Detectar cuando un jugador SOSTIENE el libro firmado "Statues Extra V1.0" en su mano principal
execute as @a if predicate as_extra:holding_tools_book run function as_extra:give_book

# Sincronización del escudo (Wandering Trader)
execute as @e[type=armor_stand,tag=has_shield] at @s run tp @e[type=villager,tag=mace_shield,distance=..2,limit=1] ~ ~ ~

# Mantener al de soporte invisible e inmortal
execute as @e[type=villager,tag=mace_shield] run effect give @s minecraft:resistance infinite 4 true
execute as @e[type=villager,tag=mace_shield] run effect give @s minecraft:invisibility infinite 0 true

# Ejecutar las acciones delegadas con contexto de ejecutor y posición
execute as @a[scores={as_invul=1..}] at @s run function as_extra:actions/invul
execute as @a[scores={as_mace=1..}] at @s run function as_extra:actions/mace
execute as @a[scores={as_scale=1..}] at @s run function as_extra:actions/scale

execute as @a if items entity @s weapon.offhand armor_stand[custom_data={copied_pose:1b}] unless items entity @s weapon.mainhand air run title @s actionbar {"text":"⚠️ ¡Debes tener la mano principal vacía para pegar!","color":"red"}