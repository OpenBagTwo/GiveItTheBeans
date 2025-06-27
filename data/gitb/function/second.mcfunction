# Desc: Periodically check if the player is holding a snowball
#
# Called by: #minecraft:load

# resets speed
function gitb:reset

execute as @p[nbt={SelectedItem: {id:"minecraft:snowball"}, RootVehicle:{Entity:{id:"minecraft:happy_ghast"}}}] run function gitb:boost_mh

execute as @p[nbt={equipment:{offhand:{id:"minecraft:snowball"}}, RootVehicle:{Entity:{id:"minecraft:happy_ghast"}}}] run function gitb:boost_oh

schedule function gitb:second 5s
