/// @description Trigger alarm to make grow
event_inherited()

_cutting_state = {
_is_getting_cutted : false,	
_speed : 0
}
alarm[0] = 240

cutting_down = function(_cutting_speed) {
	_cutting_state._cutting_speed = _cutting_speed
	if !_cutting_state._is_getting_cutted {
		alarm[1] = _cutting_state._cutting_speed
		_cutting_state._is_getting_cutted = true
	}
}
