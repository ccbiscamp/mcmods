# In your main function (e.g. respawn_dragon.mcfunction)
execute in minecraft:the_end unless entity @e[type=ender_dragon] run function your_namespace:dragon_spawn

# In dragon_spawn.mcfunction
say Dragon function called
scoreboard players set #dragon dragon_timer 0
scoreboard players set #dragon dragon_alive 1
execute in minecraft:the_end run summon ender_dragon 0 100 0 {DragonPhase:0}
execute in minecraft:the_end run summon end_crystal 0 103 0
execute in minecraft:the_end run summon end_crystal 7 103 7
execute in minecraft:the_end run summon end_crystal -7 103 7
execute in minecraft:the_end run summon end_crystal 7 103 -7
execute in minecraft:the_end run summon end_crystal -7 103 -7