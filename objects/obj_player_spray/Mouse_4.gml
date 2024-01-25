/// @description 

var _player_x = obj_player.x
var _player_y = obj_player.y
var _player_direction = obj_player.direction



/*
// return instances of weed objects in line in front of player direction
var _instance2 = instance_place(_player_x + 32, _player_y, obj_weed)
var _instance3 = instance_place(_player_x + 64, _player_y, obj_weed)
var _instance4 = instance_place(_player_x + 96, _player_y, obj_weed)
var _instance5 = instance_place(_player_x + 128, _player_y, obj_weed)

var _instances = [_instance1, _instance2, _instance3, _instance4, _instance5]


// destroy weed instances around player model
for (var _i = 0; _i < array_length(_instances); _i++) {
	instance_destroy(_instances[_i])
}

effect_create_layer("Instances", ef_explosion, _player_x + 48, _player_y + 48, 1, c_green)
*/

var _lastkey = keyboard_lastkey
var _right_key = keyboard_check(vk_right) || keyboard_check(ord("D"))
var _left_key = keyboard_check(vk_left) || keyboard_check(ord("A"))
var _up_key = keyboard_check(vk_up) || keyboard_check(ord("W"))
var _down_key = keyboard_check(vk_down) || keyboard_check(ord("S"))

// Test Line radius with these creates
show_debug_message(_right_key)
show_debug_message(global.player_move_direction_y)

//oben
if (_lastkey == vk_up) {
	instance_create_depth(_player_x, _player_y + -32, -100, obj_near_compost)
	instance_create_depth(_player_x, _player_y + -64, -100, obj_near_compost)
	instance_create_depth(_player_x, _player_y + -96, -100, obj_near_compost)
	instance_create_depth(_player_x, _player_y + -128, -100, obj_near_compost)
	instance_create_depth(_player_x, _player_y + -160, -100, obj_near_compost)
}

//rechts
if (_lastkey == vk_right) {
	instance_create_depth(_player_x + 64, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x + 96, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x + 128, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x + 160, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x + 192, _player_y + 32, -100, obj_near_compost)
}
