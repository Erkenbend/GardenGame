/// @description Trigger alarm to make grow
event_inherited()

_cutting_state = {
  _is_getting_cut : false,	
  _speed : 0
}

get_variable_delay = function (_base_delay) {
	return random_range(_base_delay - global.weed_growth.delay_random_variability / 2, _base_delay + global.weed_growth.delay_random_variability / 2)
}

alarm[0] = get_variable_delay(global.weed_growth.delay_small_to_medium)

cutting_down = function(_cutting_speed) {
	_cutting_state._speed = _cutting_speed
	if !_cutting_state._is_getting_cut {
		alarm[1] = _cutting_state._speed
		_cutting_state._is_getting_cut = true
	}
}

_spawn_new_instance = function (_x, _y) {
	if (place_free(_x,_y) && !place_meeting(_x, _y, obj_weed)) {
		instance_create_layer(_x,_y, "Instances", obj_weed)
	}
}
