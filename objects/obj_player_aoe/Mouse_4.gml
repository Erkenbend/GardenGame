/// @description 

var _player_x = obj_player.x
var _player_y = obj_player.y

// return instance of object around player
var _instance1 = instance_place(_player_x, _player_y, obj_weed)
var _instance2 = instance_place(_player_x + 32, _player_y, obj_weed)
var _instance3 = instance_place(_player_x, _player_y + 32, obj_weed)
var _instance4 = instance_place(_player_x + 32, _player_y + 32, obj_weed)

var _instance5 = instance_place(_player_x + 64, _player_y, obj_weed)
var _instance6 = instance_place(_player_x, _player_y + 64, obj_weed)
var _instance7 = instance_place(_player_x + 64, _player_y + 32, obj_weed)
var _instance8 = instance_place(_player_x + 32, _player_y + 64, obj_weed)
var _instance9 = instance_place(_player_x + 64, _player_y +64, obj_weed)

var _instances = [_instance1, _instance2, _instance3, _instance4, _instance5, _instance6, _instance7, _instance8, _instance9]

show_debug_message(array_length(_instances))	

// destroy weed instances around player model
for (var _i = 0; _i < array_length(_instances); _i++) {
	instance_destroy(_instances[_i])
}

/*
// Test AoE radius with these creates
instance_create_depth(_player_x, _player_y, -100, obj_near_compost)
instance_create_depth(_player_x + 32, _player_y, -100, obj_near_compost)
instance_create_depth(_player_x, _player_y + 32, -100, obj_near_compost)
instance_create_depth(_player_x + 32, _player_y + 32, -100, obj_near_compost)

instance_create_depth(_player_x + 64, _player_y, -100, obj_near_compost)
instance_create_depth(_player_x, _player_y + 64, -100, obj_near_compost)
instance_create_depth(_player_x + 64, _player_y + 32, -100, obj_near_compost)
instance_create_depth(_player_x + 32, _player_y + 64, -100, obj_near_compost)
instance_create_depth(_player_x + 64, _player_y +64, -100, obj_near_compost)