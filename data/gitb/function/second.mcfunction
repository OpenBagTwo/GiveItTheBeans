# Desc: Periodically check if the player is holding a snowball
#
# Called by: #minecraft:load

# resets speed
function gitb:uninstall

execute as @p[nbt={SelectedItem: {id:"minecraft:snowball"}, RootVehicle:{Entity:{id:"minecraft:happy_ghast"}}}] run attribute @n[type=minecraft:happy_ghast] minecraft:flying_speed modifier add gitb:gitb_mh 0.05 add_value
execute as @p[nbt={SelectedItem: {id:"minecraft:snowball"}, RootVehicle:{Entity:{id:"minecraft:happy_ghast"}}}] run item modify entity @s weapon.mainhand {function:"minecraft:set_count", count:-1, add:true}

execute as @p[nbt={equipment:{offhand:{id:"minecraft:snowball"}}, RootVehicle:{Entity:{id:"minecraft:happy_ghast"}}}] run attribute @n[type=minecraft:happy_ghast] minecraft:flying_speed modifier add gitb:gitb_oh 0.05 add_value
execute as @p[nbt={equipment:{offhand:{id:"minecraft:snowball"}}, RootVehicle:{Entity:{id:"minecraft:happy_ghast"}}}] run item modify entity @s weapon.offhand {function:"minecraft:set_count", count:-1, add:true}

schedule function gitb:second 5s
