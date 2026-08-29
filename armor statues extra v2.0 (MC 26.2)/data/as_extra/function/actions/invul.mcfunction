# ============================================================================
# INVULNERABILITY SYSTEM - Statues Extra v2.0
# ============================================================================
# Turning ON (Trigger 1)
execute if score @p[tag=extra_selected] extra_trigger matches 1 run data merge entity @s {Invulnerable:1b,DisabledSlots:4144959}
execute if score @p[tag=extra_selected] extra_trigger matches 1 as @p[tag=extra_selected] run title @s actionbar {"text":"Invulnerable: ON","color":"green"}

# Turning OFF (Trigger 2)
execute if score @p[tag=extra_selected] extra_trigger matches 2 run data merge entity @s {Invulnerable:0b,DisabledSlots:0}
execute if score @p[tag=extra_selected] extra_trigger matches 2 as @p[tag=extra_selected] run title @s actionbar {"text":"Invulnerable: OFF","color":"yellow"}