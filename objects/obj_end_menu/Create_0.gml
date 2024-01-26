/// @description Render menu

if global.score > global.high_score[$ global.difficulty_name][$ room_get_name(global.current_level)] {
	global.high_score[$ global.difficulty_name][$ room_get_name(global.current_level)] = global.score	
}
