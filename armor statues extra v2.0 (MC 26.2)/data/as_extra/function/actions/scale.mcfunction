# ============================================================================
# SCALE SYSTEM - Statues Extra v2.0
# ============================================================================
# WARNING: Do not use scale with Mace Shield active!
# This function checks for active Mace Shield and prevents scaling

# Check if armor stand has Mace Shield active (tag: has_shield)
execute if entity @s[tag=has_shield] run tellraw @a[tag=extra_selected] [{"text":"⚠ ","color":"red"},{"text":"Cannot scale armor stand while Mace Shield is active!","color":"yellow"}]
execute if entity @s[tag=has_shield] run title @a[tag=extra_selected] actionbar {"text":"⚠ Mace Shield Active","color":"red"}

# Apply scale only if Mace Shield is NOT active
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 10 run attribute @s minecraft:scale base set 0.5
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 20 run attribute @s minecraft:scale base set 1.0
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 30 run attribute @s minecraft:scale base set 1.5
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 40 run attribute @s minecraft:scale base set 2.0
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 50 run attribute @s minecraft:scale base set 2.5
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 60 run attribute @s minecraft:scale base set 3.0

# Show confirmation message if scale was applied
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 10 run tellraw @a[tag=extra_selected] [{"text":"✓ ","color":"green"},{"text":"Scale set to 0.5","color":"yellow"}]
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 20 run tellraw @a[tag=extra_selected] [{"text":"✓ ","color":"green"},{"text":"Scale set to 1.0","color":"yellow"}]
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 30 run tellraw @a[tag=extra_selected] [{"text":"✓ ","color":"green"},{"text":"Scale set to 1.5","color":"yellow"}]
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 40 run tellraw @a[tag=extra_selected] [{"text":"✓ ","color":"green"},{"text":"Scale set to 2.0","color":"yellow"}]
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 50 run tellraw @a[tag=extra_selected] [{"text":"✓ ","color":"green"},{"text":"Scale set to 2.5","color":"yellow"}]
execute unless entity @s[tag=has_shield] if score @p[tag=extra_selected] extra_trigger matches 60 run tellraw @a[tag=extra_selected] [{"text":"✓ ","color":"green"},{"text":"Scale set to 3.0","color":"yellow"}]