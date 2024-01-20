/// @description Grow to next stage if possible

var _spawn_new_instance = function (_x, _y) {
	if (place_free(_x,_y) && !place_meeting(_x, _y, obj_weed)) {
		instance_create_layer(_x,_y, "Instances", obj_weed)
	}
}

switch sprite_index {
	case spr_weed_small:
		sprite_index = spr_weed_medium
		alarm[0] = random_range(global.weed_growth.delay_medium_to_big - global.weed_growth.delay_random_variability / 2, global.weed_growth.delay_medium_to_big + global.weed_growth.delay_random_variability / 2)
		break
	case spr_weed_medium:
		sprite_index = spr_weed_big
		alarm[0] = random_range(global.weed_growth.delay_big_to_spread - global.weed_growth.delay_random_variability / 2, global.weed_growth.delay_big_to_spread + global.weed_growth.delay_random_variability / 2)
		break
	case spr_weed_big:
	// Adding directions as comment. Im to tired to think :) 
		_spawn_new_instance(x, y - global.grid_properties.box_size)
		_spawn_new_instance(x, y + global.grid_properties.box_size)
		_spawn_new_instance(x + global.grid_properties.box_size, y)
		_spawn_new_instance(x - global.grid_properties.box_size, y)

		instance_destroy()
		break
}
