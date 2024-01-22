/// @description Init global variables

// all distances in pixels (full hd window)
// all durations in frames (60 fps)

// enable true random
//https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Maths_And_Numbers/Number_Functions/randomise.htm
randomize()

//// MUTABLE STATE

global.score = 0
global.high_score = 0
global.bag_capacity_multiplier = 1
global.bag_content = 0


//// IMMUTABLE CONFIG

global.points_per_cut = 10
global.bag_capacity = 2
global.cut_down_duration = 3

global.ui = {
	info_text_duration: 60
}

global.grid_properties = {
	grid_width: 48,
	grid_height: 26,
	box_size: 32,

	// offset has to be a multiple of box size!
	grid_start_x: 224,
	grid_start_y: 96
}

global.weed_growth = {
	delay_initial_spawn: 60,
	delay_spawn_small: 240,
	delay_small_to_medium: 240,
	delay_medium_to_big: 480,
	delay_big_to_spread: 240,
	delay_random_variability: 60,
	max_instance_count: 30,
	spread_spawn_probability: 0.75,
	cut_small: 60,
	cut_medium: 120,
	cut_big: 180
}

global.player_movement = {
	move_speed_initial: 8,
	debris_move_speed_modifier: 0.4
	move_speed_multiplier: 1
}

global.cards_in_deck = [obj_card_dummy_1, obj_card_dummy_2]

alarm[0] = 1  // add fake loading time if needed
