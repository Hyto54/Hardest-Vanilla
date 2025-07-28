#check time of the day to know if it has to buff mobs or not
execute if predicate ultra:is_night run function ultra:features/mob_night_buff/mob_buff
execute unless predicate ultra:is_night run function ultra:features/mob_night_buff/mob_debuff