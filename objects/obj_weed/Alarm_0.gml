/// @description Grow to next stage if possible

if (sprite_index == spr_weed_small) {
	sprite_index = spr_weed_medium
	alarm[0] = global.weed_growth.delay_medium_to_big
} else if (sprite_index == spr_weed_medium) {
	sprite_index = spr_weed_big
}
