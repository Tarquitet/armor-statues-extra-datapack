# ============================================================================
# UNINSTALL - Statues Extra v2.0
# ============================================================================
# Description: Clean up all datapack data before removal
# Called by: main:#uninstall

# 1. Cancelar los bucles programados para evitar errores en la consola
schedule clear as_extra:tick

# 2. Remover los scoreboards (incluyendo los de versiones anteriores por compatibilidad)
scoreboard objectives remove extra_trigger
scoreboard objectives remove extra_step
scoreboard objectives remove extra_scale
scoreboard objectives remove extra_success

# 3. Eliminar entidades residuales (Aldeanos del Mace Shield)
kill @e[type=minecraft:villager,tag=mace_shield]

# 4. Limpiar tags residuales de jugadores
tag @a remove extra_selected
tag @a remove as_extra_craft

# 5. Limpiar tags residuales de entidades
tag @e remove extra_selected
tag @e remove has_shield

# 6. Revocar el advancement para que no quede "fantasma" en la lista de logros
advancement revoke @a only as_extra:get_book

# 7. Mensaje de confirmación
tellraw @a [{"text":"[Statues Extra] ","color":"dark_blue","bold":true},{"text":"Datapack desinstalado y datos limpiados correctamente.","color":"green"}]