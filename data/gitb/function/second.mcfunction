# Desc: Periodically check if the player is holding a snowball
#
# Called by: #minecraft:load

# resets speed
function gitb:reset

execute as @e[type=happy_ghast] on controller if entity @s[nbt={SelectedItem: {id:"minecraft:snowball"}}] run function gitb:boost_mh

execute as @e[type=happy_ghast] on controller if entity @s[nbt={equipment:{offhand:{id:"minecraft:snowball"}}}] run function gitb:boost_oh

schedule function gitb:second 5s
