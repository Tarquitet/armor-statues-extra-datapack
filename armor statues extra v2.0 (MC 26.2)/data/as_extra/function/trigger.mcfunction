# ============================================================================
# TRIGGER ROUTER - Statues Extra v2.0
# ============================================================================
# Tags player and nearest armor stand within 3 blocks
tag @s add extra_selected
tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest] add extra_selected

# Route to action functions based on trigger value
execute if score @s extra_trigger matches 1..2 as @e[type=armor_stand,tag=extra_selected] run function as_extra:actions/invul
execute if score @s extra_trigger matches 3..4 as @e[type=armor_stand,tag=extra_selected] run function as_extra:actions/mace
execute if score @s extra_trigger matches 10..60 as @e[type=armor_stand,tag=extra_selected] run function as_extra:actions/scale

# Cleanup tags and reset trigger
tag @e[type=armor_stand,tag=extra_selected] remove extra_selected
tag @s remove extra_selected
scoreboard players set @s extra_trigger 0
scoreboard players enable @s extra_trigger