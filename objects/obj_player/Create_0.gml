//snd refs for sfx play control
ref_snd_bag = undefined

mirrored = false

// 1 for horiz, 2 for vert
last_pressed_dir = 1

_get_default_modifiers = function () {
	return  {
		weed_spread_probability_multiplier: 1,
		extra_bag_capacity: 0,
		debris_immunity: false,
		move_speed_permanent_multiplier: 1,
		move_speed_temporary_multiplier: 1,
		insanity_multiplier: 1,
	}
}

// init temporary modifiers
modifiers = _get_default_modifiers()

// variables for movement
move_dir = 0
move_speed = global.player_movement.move_speed_initial * modifiers.move_speed_permanent_multiplier * modifiers.move_speed_temporary_multiplier
move_started = false

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

_get_standing_sprite = function() {
	switch sprite_index {
		case spr_player_walking_down:
		case spr_player_cutting:
			return spr_player_standing_down
		case spr_player_walking_right:
			return spr_player_standing_right
		case spr_player_walking_left:
			return spr_player_standing_left
		case spr_player_walking_up:
			return spr_player_standing_up
		default:
			return sprite_index
	}
}
