/// @description Update sprite and speed, possibly end game

if !alive {
	sprite_index = spr_landlord_dead
	exit
}

var _insanity = obj_player.modifiers.insanity_multiplier * instance_number(obj_weed) / global.weed_growth.max_instance_count
show_debug_message(_insanity)

// update sprite
if _insanity >= 1 {
	alive = false
	alarm[0] = global.ui.game_over_wait_duration
} else if _insanity > 0.8 {
	sprite_index = spr_landlord_very_angry
} else if _insanity > 0.5 {
	sprite_index = spr_landlord_mid_angry
} else {
	sprite_index = spr_landlord_calm
}

// compute movement
/*
if x > max_x || x < min_x {
	move_dir *= -1
}
x += move_dir * power(_insanity, 2) * move_speed
*/

if image_angle > max_tilt || image_angle < -max_tilt {
	move_dir *= -1
}
image_angle += move_dir * power(_insanity, 2) * tilt_speed
