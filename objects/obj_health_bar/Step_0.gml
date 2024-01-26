/// @description Update health bar and possibly end game

var _insanity = obj_player.modifiers.insanity_multiplier * instance_number(obj_weed) / global.weed_growth.max_instance_count

if _insanity > 0.9 {
	sprite_index = spr_health_bar_100
} else if _insanity > 0.75 {
	sprite_index = spr_health_bar_75
} else if _insanity > 0.5 {
	sprite_index = spr_health_bar_50
} else if _insanity > 0.25 {
	sprite_index = spr_health_bar_25
} else {
	sprite_index = spr_health_bar_0
}
