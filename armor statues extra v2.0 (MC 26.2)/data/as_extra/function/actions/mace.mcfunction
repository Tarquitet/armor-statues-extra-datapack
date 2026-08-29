# ============================================================================
# MACE SHIELD SYSTEM - Statues Extra v2.0
# ============================================================================

# --- TURNING ON (Trigger 3) ---

# 1. Check if already active (SOLO se ejecuta si el trigger es 3)
execute if score @p[tag=extra_selected] extra_trigger matches 3 if entity @s[tag=has_shield] run tellraw @a[tag=extra_selected] [{"text":"⚠ ","color":"red"},{"text":"Mace Shield is already active!","color":"yellow"}]
execute if score @p[tag=extra_selected] extra_trigger matches 3 if entity @s[tag=has_shield] run title @a[tag=extra_selected] actionbar {"text":"Already Active","color":"red"}

# 2. Activate if NOT active (SOLO se ejecuta si el trigger es 3)
execute if score @p[tag=extra_selected] extra_trigger matches 3 unless entity @s[tag=has_shield] at @s run kill @e[type=villager,tag=mace_shield,distance=..1]
execute if score @p[tag=extra_selected] extra_trigger matches 3 unless entity @s[tag=has_shield] at @s run summon villager ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["mace_shield"],VillagerData:{profession:"minecraft:nitwit"}}
execute if score @p[tag=extra_selected] extra_trigger matches 3 unless entity @s[tag=has_shield] as @a[tag=extra_selected] run title @s actionbar {"text":"Mace Shield: ON","color":"green"}

# 3. Add the tag AT THE VERY END (para no bloquear los mensajes de arriba)
execute if score @p[tag=extra_selected] extra_trigger matches 3 unless entity @s[tag=has_shield] run tag @s add has_shield


# --- TURNING OFF (Trigger 4) ---

# 1. Remove tag and kill villager (SOLO se ejecuta si el trigger es 4)
execute if score @p[tag=extra_selected] extra_trigger matches 4 run tag @s remove has_shield
execute if score @p[tag=extra_selected] extra_trigger matches 4 at @s run kill @e[type=villager,tag=mace_shield,distance=..1]
execute if score @p[tag=extra_selected] extra_trigger matches 4 as @a[tag=extra_selected] run title @s actionbar {"text":"Mace Shield: OFF","color":"yellow"}