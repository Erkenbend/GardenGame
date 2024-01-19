// get inputs
var _right_key = keyboard_check(vk_right) || keyboard_check(ord("D"))
var _left_key = keyboard_check(vk_left) || keyboard_check(ord("A"))
var _up_key = keyboard_check(vk_up) || keyboard_check(ord("W"))
var _down_key = keyboard_check(vk_down) || keyboard_check(ord("S"))

// TODO: fix key priority to make movement feel better
// player movement
if (_up_key && place_free(x, y - move_speed)) {
	move_dir = 90
	y -= move_speed
}
else if (_down_key && place_free(x, y + move_speed)) {
	move_dir = 270
	y += move_speed
}
else if (_right_key && place_free(x + move_speed, y)) {
	move_dir = 0
	x += move_speed
}
else if (_left_key && place_free(x - move_speed, y)) {
	move_dir = 180
	x -= move_speed
}

if place_meeting(x,y,obj_weed) {
	instance_place(x, y, obj_weed).cutting_down(cut_down_speed)
}


if place_meeting(x, y, obj_debris) {
	move_speed = move_speed_initial * debris_move_speed_modifier
} else {
	move_speed = move_speed_initial / debris_move_speed_modifier
}

