/// @description 

event_inherited()

if (!obj_deck.cards_clickable) {
	exit
}

var _player_x = obj_player.x
var _player_y = obj_player.y
var _player_direction = obj_player.direction

var _lastkey = keyboard_lastkey
var _right_key = keyboard_check(vk_right) || keyboard_check(ord("D"))
var _left_key = keyboard_check(vk_left) || keyboard_check(ord("A"))
var _up_key = keyboard_check(vk_up) || keyboard_check(ord("W"))
var _down_key = keyboard_check(vk_down) || keyboard_check(ord("S"))

var _instance1 = undefined
var _instance2 = undefined
var _instance3 = undefined
var _instance4 = undefined
var _instance5 = undefined

// return instances of weed objects in line in front of player direction
// TODO refactor for better flexibility
switch _lastkey {
	case vk_up:
		_instance1 = instance_place(_player_x + 48, _player_y - 32, obj_weed)
		_instance2 = instance_place(_player_x + 48, _player_y - 64, obj_weed)
		_instance3 = instance_place(_player_x + 48, _player_y - 96, obj_weed)
		_instance4 = instance_place(_player_x + 48, _player_y - 128, obj_weed)
		_instance5 = instance_place(_player_x + 48, _player_y - 160, obj_weed)
		break
	case vk_right:
		_instance1 = instance_place(_player_x + 96, _player_y + 32, obj_weed)
		_instance2 = instance_place(_player_x + 128, _player_y + 32, obj_weed)
		_instance3 = instance_place(_player_x + 160, _player_y + 32, obj_weed)
		_instance4 = instance_place(_player_x + 192, _player_y + 32, obj_weed)
		_instance5 = instance_place(_player_x + 224, _player_y + 32, obj_weed)
		break
	case vk_down:
		_instance1 = instance_place(_player_x + 48, _player_y + 96, obj_weed)
		_instance2 = instance_place(_player_x + 48, _player_y + 128, obj_weed)
		_instance3 = instance_place(_player_x + 48, _player_y + 160, obj_weed)
		_instance4 = instance_place(_player_x + 48, _player_y + 192, obj_weed)
		_instance5 = instance_place(_player_x + 48, _player_y + 224, obj_weed)
		break
	case vk_left:
		_instance1 = instance_place(_player_x, _player_y + 32, obj_weed)
		_instance2 = instance_place(_player_x - 32, _player_y + 32, obj_weed)
		_instance3 = instance_place(_player_x - 64, _player_y + 32, obj_weed)
		_instance4 = instance_place(_player_x - 96, _player_y + 32, obj_weed)
		_instance5 = instance_place(_player_x - 128, _player_y + 32, obj_weed)
		break
}

var _instances = [_instance1, _instance2, _instance3, _instance4, _instance5]

// destroy weed instances around player model
for (var _i = 0; _i < array_length(_instances); _i++) {	
	var _inst = _instances[_i]
	if _inst == undefined {
		continue
	}
	instance_destroy(_inst)
}

// Use this to debug Spray collisions if necessary

if (_lastkey == vk_up) {
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y - 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y - 64, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y - 96, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y - 128, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y - 160, 1, c_green)
}

if (_lastkey == vk_right) {
	effect_create_layer("Instances", ef_star, _player_x + 96, _player_y + 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 128, _player_y + 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 160, _player_y + 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 192, _player_y + 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 224, _player_y + 32, 1, c_green)
}

if (_lastkey == vk_down) {
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y + 96, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y + 128, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y + 160, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y + 190, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x + 48, _player_y + 224, 1, c_green)
}

if (_lastkey == vk_left) {
	effect_create_layer("Instances", ef_star, _player_x, _player_y + 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x - 32, _player_y + 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x - 64, _player_y + 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x - 96, _player_y + 32, 1, c_green)
	effect_create_layer("Instances", ef_star, _player_x - 128, _player_y + 32, 1, c_green)
}


/*

if (_lastkey == vk_up) {
	instance_create_depth(_player_x + 32, _player_y + -32, -100, obj_near_compost)
	instance_create_depth(_player_x + 32, _player_y + -64, -100, obj_near_compost)
	instance_create_depth(_player_x + 32, _player_y + -96, -100, obj_near_compost)
	instance_create_depth(_player_x + 32, _player_y + -128, -100, obj_near_compost)
	instance_create_depth(_player_x + 32, _player_y + -160, -100, obj_near_compost)
}

if (_lastkey == vk_right) {
	instance_create_depth(_player_x + 64, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x + 96, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x + 128, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x + 160, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x + 192, _player_y + 32, -100, obj_near_compost)
}

if (_lastkey == vk_down) {
	instance_create_depth(_player_x + 32, _player_y + 96, -100, obj_near_compost)
	instance_create_depth(_player_x + 32, _player_y + 128, -100, obj_near_compost)
	instance_create_depth(_player_x + 32, _player_y + 160, -100, obj_near_compost)
	instance_create_depth(_player_x + 32, _player_y + 192, -100, obj_near_compost)
	instance_create_depth(_player_x + 32, _player_y + 224, -100, obj_near_compost)
}

if (_lastkey == vk_left) {
	instance_create_depth(_player_x, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x - 32, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x - 64, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x - 96, _player_y + 32, -100, obj_near_compost)
	instance_create_depth(_player_x - 128, _player_y + 32, -100, obj_near_compost)
}

*/