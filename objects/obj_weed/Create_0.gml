/// @description Trigger alarm to make grow
event_inherited()

_cutting_state = {
  _is_getting_cut : false,	
  _speed : 0
}

alarm[0] = global.weed_growth.delay_small_to_medium

cutting_down = function(_cutting_speed) {
	_cutting_state._cutting_speed = _cutting_speed
	if !_cutting_state._is_getting_cut {
		alarm[1] = _cutting_state._cutting_speed
		_cutting_state._is_getting_cut = true
	}
}
