# ============================================================================
# LOAD FUNCTION - Statues Extra v2.0
# ============================================================================
# Create trigger scoreboard (player-triggered)
scoreboard objectives add extra_trigger trigger
scoreboard players enable * extra_trigger

# Note: extra_step and extra_scale removed - using direct /attribute command
# Note: extra_success removed - using direct loot replace instead