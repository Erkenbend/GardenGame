var _right_key = keyboard_check(vk_right) || keyboard_check(ord("D"))
var _left_key = keyboard_check(vk_left) || keyboard_check(ord("A"))
var _up_key = keyboard_check(vk_up) || keyboard_check(ord("W"))
var _down_key = keyboard_check(vk_down) || keyboard_check(ord("S"))

var _x_movement_sign = 0
var _y_movement_sign = 0

var _x_move = 0
var _y_move = 0

_register_last_direction()

// short name
var _box_size = global.grid_properties.box_size

// determine move direction, cancelling double key press in opposite directions
if (_right_key xor _left_key) {
	_x_movement_sign += _right_key ? 1 : -1
}
if (_up_key xor _down_key) {
	_y_movement_sign += _down_key ? 1 : -1
}

// reduce movement speed when on debris
move_speed = global.player_movement.move_speed_initial
if (place_meeting(x, y, obj_debris)) {
	move_speed *= global.player_movement.debris_move_speed_modifier
}

if (move_started) {
	// when between tiles: finish movement in the given direction before accepting new inputs
	_x_move = move_speed * cos(move_dir)
	_y_move = move_speed * sin(move_dir)
	//show_debug_message(string_concat("CO ", x % _box_size, " ", y % _box_size))
	if ((x + _x_move) % _box_size == 0 && (y + _y_move) % _box_size == 0) {
		move_started = false
	}
} else {
	// start computing next position if required
	if (_x_movement_sign != 0 || _y_movement_sign != 0) {
		if (_x_movement_sign != 0 && _y_movement_sign != 0) {
			// when conflict (e.g. up + right): prefer last pressed direction
			if (last_pressed_dir = 1) {
				_y_movement_sign = 0
			} else {
				_x_movement_sign = 0
			}
		}
		
		// save move direction for auto-moving between tiles
		//show_debug_message(string_concat("MS ", _x_movement_sign, " ", _y_movement_sign))
		move_dir = min(_x_movement_sign, 0) * pi + _y_movement_sign * pi/2
		//show_debug_message(string_concat("MD ", move_dir * 180 / pi))
		
		_x_move = _x_movement_sign * move_speed
		_y_move = _y_movement_sign * move_speed
		move_started = true
	}
}

// only move if target space available
if (place_free(x + _x_move, y + _y_move)) {
	x += _x_move
	y += _y_move
} else {
	move_started = false
}

// if the move changed tiles: make player snap to grid (not snapping automatically when moving over debris because of speed modifier)
if (abs((x % _box_size) - ((x - _x_move) % _box_size)) > _box_size / 2 || abs((y % _box_size) - ((y - _y_move) % _box_size)) > _box_size / 2) {
	//show_debug_message(string_concat("CT ", x, " ", y))
	var _x_corr = 0
	var _y_corr = 0

	if (x % move_speed != 0) {
		if (x % move_speed < move_speed / 2) {
			_x_corr = -(x % move_speed)
		} else {
			_x_corr = move_speed - (x % move_speed)
		}
	}

	if (y % move_speed != 0) {
		if (y % move_speed < move_speed / 2) {
			_y_corr = - (y % move_speed)
		} else {
			_y_corr = move_speed - (y % move_speed)
		}
	}

	if (_x_corr != 0 || _y_corr != 0) {
		if (place_free(x + _x_corr, y + _y_corr)) {
			x += _x_corr
			y += _y_corr
		}
	}

	move_started = false
}

if place_meeting(x, y, obj_weed) {
	instance_place(x, y, obj_weed).cutting_down(cut_down_speed)
}
