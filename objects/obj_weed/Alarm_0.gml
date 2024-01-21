/// @description Grow to next stage if possible

switch sprite_index {
	case spr_weed_small:
		sprite_index = spr_weed_medium
		alarm[0] = get_variable_delay(global.weed_growth.delay_medium_to_big)
		break
	case spr_weed_medium:
		sprite_index = spr_weed_big
		y -= global.grid_properties.box_size  // compensate for changing sprite size
		alarm[0] = get_variable_delay(global.weed_growth.delay_big_to_spread)
		break
	case spr_weed_big:
		// compensate for changing sprite size
		sprite_index = spr_weed_small
		y += global.grid_properties.box_size
		
		// short name
		var _spawn_prob =  global.weed_growth.spread_spawn_probability
		
		if (random(1) < _spawn_prob) {
			_spawn_new_instance(x, y - global.grid_properties.box_size)
		}
		if (random(1) < _spawn_prob) {
			_spawn_new_instance(x, y + global.grid_properties.box_size)
		}
		if (random(1) < _spawn_prob) {
			_spawn_new_instance(x + global.grid_properties.box_size, y)
		}
		if (random(1) < _spawn_prob) {
			_spawn_new_instance(x - global.grid_properties.box_size, y)
		}

		instance_destroy()
		break
}
