# Desc: Cleanly reset speeds
#
# Called by: #gitb:second

execute as @e[type=minecraft:happy_ghast] run attribute @s minecraft:flying_speed modifier remove gitb:gitb_mh
execute as @e[type=minecraft:happy_ghast] run attribute @s minecraft:flying_speed modifier remove gitb:gitb_oh
