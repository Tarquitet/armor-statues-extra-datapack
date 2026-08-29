# FOR DEBUGGING: REMOVE '#' FROM say COMMANDS
# If player has tag = as_extra_craft do this instead.
# 1. Remove actual book called "StatuesExtra" --> NOT NECCESARY BECAUSE IT CAN WORK INSTEAD WITH loot replace
#execute store result score #extra_success extra_success run clear @s minecraft:written_book[minecraft:written_book_content~{title:"StatuesExtra"}] 1
#El scoreboard extra_success puede presentar problema debido a que es un score universal y no por jugador, el advancement ya lo hace por jugador
#execute if score #extra_success extra_success matches 1.. run loot replace entity @s weapon.mainhand loot as_extra:book
loot replace entity @s weapon.mainhand loot as_extra:book
tag @s remove as_extra_craft
# 3. Revocar el advancement para que pueda volver a activarse
advancement revoke @s only as_extra:get_book