# ============================================================================
# MAIN TICK LOOP - Statues Extra v2.0
# ============================================================================
# Schedule next tick
schedule function as_extra:tick 1t

# Mace Shield System - Teleport and protect villager
execute as @e[type=armor_stand,tag=has_shield] at @s run tp @e[type=villager,tag=mace_shield,distance=..2,limit=1] ~ ~ ~
execute as @e[type=villager,tag=mace_shield] run effect give @s minecraft:resistance infinite 255 true
execute as @e[type=villager,tag=mace_shield] run effect give @s minecraft:invisibility infinite 0 true

# Process player triggers
execute as @a[scores={extra_trigger=1..}] at @s run function as_extra:trigger

# Book replacement system
execute as @a[tag=as_extra_craft] run function as_extra:replace_book