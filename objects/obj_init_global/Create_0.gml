/// @description Init global variables

// all distances in pixels (full hd window)
// all durations in frames (60 fps)

// enable true random
//https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Maths_And_Numbers/Number_Functions/randomise.htm
randomize()

//// MUTABLE STATE

global.score = 0
global.high_score = {
	easy: {
		rm_level_0 : 0,
		rm_level_1 : 0
	},
	normal: {
		rm_level_0 : 0,
		rm_level_1 : 0
	},
	hard: {
		rm_level_0 : 0,
		rm_level_1 : 0
	}
}

global.bag_content = 0
global.current_level = rm_level_1
global.difficulty_multiplier = 1
global.difficulty_name = "normal"
global.game_paused = false
global.skip_intro = false

//// IMMUTABLE CONFIG

global.points_per_cut = 10
global.bag_capacity = 2
global.cut_down_duration = 3

global.ui = {
	info_text_duration: 60,
	game_over_wait_duration: 120
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
	delay_spawn_small: 180,
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
	debris_move_speed_multiplier: 0.4,
	move_speed_temporary_multiplier: 1.5,
}


global.cards_in_deck = [
	obj_move_speed_temporary,
	obj_move_speed_permanent,
	obj_move_speed_immunity,
	obj_weed_slow,
	obj_bag_increase,
	obj_player_aoe,
	obj_player_spray,
	obj_insanity_slow_permanent
]
/*
global.cards_in_deck = [
obj_insanity_slow_temporary]

*/
global.powerups = {
	click_cooldown: 120,
	recently_clicked_duration: 180,
	temp_effect_duration: 240,
}

global.cards_in_deck_count = array_length(global.cards_in_deck)

// SFX

global.sfx = {
	bag_shake: [snd_shake_bag_1, snd_shake_bag_2, snd_shake_bag_3],
	throw_compost: [snd_throw_compost_1, snd_throw_compost_2, snd_throw_compost_3, snd_throw_compost_4, snd_throw_compost_5]
}

global.music = {
	music_gain: 0.4,
	music: [snd_garden_theme_2],
	ambiente_gain: 0.2,
	ambiente: [snd_ambiente],
	sound_effects_gain: 1
}


global.translation = {
	rooms : {
		rm_level_0 : "Level 1",
		rm_level_1 : "Level 2"
	}
}

alarm[0] = 1  // add fake loading time if needed
