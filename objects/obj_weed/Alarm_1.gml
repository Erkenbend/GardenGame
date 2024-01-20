/// @description cut down

if place_meeting(x ,y, obj_player) {
	switch sprite_index {
		case spr_weed_small:
			instance_destroy()
			break
		case spr_weed_medium:
			sprite_index = spr_weed_small
			alarm[0] = global.weed_growth.delay_small_to_medium
			alarm[1] = _cutting_state._cutting_speed
			break
		case spr_weed_big:
			sprite_index = spr_weed_medium
			alarm[0] = global.weed_growth.delay_medium_to_big
			alarm[1] = _cutting_state._cutting_speed
			break
	}
} else {
	_cutting_state._is_getting_cut = false	
	_cutting_state._speed = 0
}
