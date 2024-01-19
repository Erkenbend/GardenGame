/// @description cut down
if place_meeting(x,y,obj_player) {
	switch sprite_index {
		case spr_weed_small:
			instance_destroy()
			break
		case spr_weed_medium:
			sprite_index = spr_weed_small
			alarm[0] = 240
			alarm[1] = _cutting_state._cutting_speed
			break
		case spr_weed_big:
			sprite_index = spr_weed_medium
			alarm[0] = 480
			alarm[1] = _cutting_state._cutting_speed
			break
	}
} else {
	_cutting_state._is_getting_cutted = false	
	_cutting_state._speed = 0
}