/// @description 


if (variable_global_exists("difficulty_multiplier") == true) {
	spread_spawn_probability_initial = global.weed_growth.spread_spawn_probability * global.difficulty_multiplier 
} else {
	spread_spawn_probability_initial  = global.weed_growth.spread_spawn_probability
}


draw_self()

instance_create_depth(
	704, 
	928, 
	-200,
	obj_card_slot_1
)

instance_create_depth(
	896, 
	928, 
	-200,
	obj_card_slot_2
)

instance_create_depth(
	1088, 
	928, 
	-200,
	obj_card_slot_3
)