// variables for movement
move_dir = 0
move_speed = global.player_movement.move_speed_initial
move_started = false

// 1 for horiz, 2 for vert
last_pressed_dir = 1

self.depth = -200

_register_last_direction = function () {
	var _right_key_pressed = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
	var _left_key_pressed = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))
	var _up_key_pressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
	var _down_key_pressed = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))

	if (_right_key_pressed || _left_key_pressed) {
		last_pressed_dir = 1
	}
	if (_up_key_pressed || _down_key_pressed) {
		last_pressed_dir = 2
	}	
}
