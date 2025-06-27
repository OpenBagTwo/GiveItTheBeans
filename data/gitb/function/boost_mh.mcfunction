# Desc: Consume a snowball from the mainhand and apply speed boost
#
# Called by: #gitb:second

item modify entity @s weapon.mainhand {function:"minecraft:set_count", count:-1, add:true}
playsound minecraft:entity.happy_ghast.equip neutral @s ~ ~ ~ 100
attribute @n[type=minecraft:happy_ghast] minecraft:flying_speed modifier add gitb:gitb_mh 0.05 add_value

