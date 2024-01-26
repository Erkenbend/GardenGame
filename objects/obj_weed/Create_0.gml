/// @description Trigger alarm to make grow
event_inherited()

depth = -100

_cutting_state = {
  _is_getting_cut : false,
}

get_variable_delay = function (_base_delay) {
	return random_range(_base_delay - global.weed_growth.delay_random_variability / 2, _base_delay + global.weed_growth.delay_random_variability / 2)
}

alarm[0] = get_variable_delay(global.weed_growth.delay_small_to_medium)

cutting_down = function(_cutting_speed) {
	if !_cutting_state._is_getting_cut {
		switch sprite_index {
			case spr_weed_small:
				alarm[1] = global.weed_growth.cut_small / _cutting_speed
				break
			case spr_weed_medium:
				alarm[1] = global.weed_growth.cut_medium / _cutting_speed
				break
			case spr_weed_big:
				alarm[1] = global.weed_growth.cut_big / _cutting_speed
				break

		}
	}
}

_spawn_new_instance = function (_x, _y) {
	if (
		place_free(_x,_y)
		&& !place_meeting(_x, _y, obj_weed)
		//&& instance_number(obj_weed) < global.weed_growth.max_instance_count
	) {
		instance_create_layer(_x,_y, "Instances", obj_weed)
	}
}
