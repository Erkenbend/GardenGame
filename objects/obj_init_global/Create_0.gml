/// @description Init global variables

//// MUTABLE

global.score = 0
global.bag_content = 0


//// IMMUTABLE CONFIG

global.points_per_cut = 10
global.bag_capacity = 2

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
	delay_spawn_small: 120,
	delay_small_to_medium: 240,
	delay_medium_to_big: 480,
	max_instance_count: 200
}

global.player_movement = {
	move_speed_initial: 3,
	debris_move_speed_modifier: 0.2
}

alarm[0] = 1  // add fake loading time if needed
