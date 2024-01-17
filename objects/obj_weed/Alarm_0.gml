/// @description Grow to next stage if possible

if (sprite_index == spr_weed_small) {
	sprite_index = spr_weed_medium
	alarm[0] = 480
} else if (sprite_index == spr_weed_medium) {
	sprite_index = spr_weed_big
}
