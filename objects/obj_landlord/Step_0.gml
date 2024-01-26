/// @description Update health bar and possibly end game

var _insanity = instance_number(obj_weed) / global.weed_growth.max_instance_count

// update sprite
if _insanity == 1 {
	// TODO: decide if this or health-bar decide about game ending
	/*audio_stop_sound(snd_walk_grass)
	audio_stop_sound(snd_walk_dirt)
	audio_stop_sound(snd_walk_gravel)
	room_goto(rm_end_screen)*/
} else if _insanity > 0.8 {
	sprite_index = spr_landlord_very_angry
} else if _insanity > 0.5 {
	sprite_index = spr_landlord_mid_angry
} else {
	sprite_index = spr_landlord_calm
}

// compute movement
if x > max_x || x < min_x {
	move_dir *= -1
}
x += move_dir * power(_insanity, 2) * move_speed
