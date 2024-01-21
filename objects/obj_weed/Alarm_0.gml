/// @description Grow to next stage if possible

switch sprite_index {
	case spr_weed_small:
		sprite_index = spr_weed_medium
		alarm[0] = get_variable_delay(global.weed_growth.delay_medium_to_big)
		break
	case spr_weed_medium:
		sprite_index = spr_weed_big
		alarm[0] = get_variable_delay(global.weed_growth.delay_big_to_spread)
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
