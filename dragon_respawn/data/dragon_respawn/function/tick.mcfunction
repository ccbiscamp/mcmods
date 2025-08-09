# Check if dragon is alive
execute if entity @e[type=ender_dragon] run scoreboard players set #dragon dragon_alive 1
execute unless entity @e[type=ender_dragon] run scoreboard players set #dragon dragon_alive 0

# If dragon is dead, increment timer
execute if score #dragon dragon_alive matches 0 if score #dragon dragon_timer matches ..119 run scoreboard players add #dragon dragon_timer 1

# If timer hits 120 (60 seconds), respawn dragon ONCE
execute if score #dragon dragon_timer matches 120 run function dragon_respawn:respawn_dragon
execute if score #dragon dragon_timer matches 120 run scoreboard players set #dragon dragon_timer 121