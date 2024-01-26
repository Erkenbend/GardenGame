/// @description Hier Beschreibung einfügen
var _insanity = instance_number(obj_weed) / global.weed_growth.max_instance_count
if _insanity < 0.25 {
	sprite_index = spr_health_bar_0	
}
if 0.25 < _insanity && _insanity < 0.5 {
	sprite_index = spr_health_bar_25
} 
if 0.5 < _insanity && _insanity < 0.75{
	sprite_index = spr_health_bar_50
} 
if 0.75 < _insanity {
	sprite_index = spr_health_bar_75
} 
if _insanity > 0.75 {
	sprite_index = spr_health_bar_100	

	if _insanity == 1 {
		room_goto(rm_end_screen)	
	}
}
