/// @description Init global variables

global.score = 0

global.weed_growth = {
	delay_initial_spawn: 60,
	delay_spawn_small: 12,
	delay_small_to_medium: 240,
	delay_medium_to_big: 480,
	max_instance_count: 2000
}

alarm[0] = 1  // add fake loading time if needed
