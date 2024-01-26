/// @description Print title and co
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x, y, "GardenGame")

draw_text(x, y + 20, string_concat("Level: ",global.translation.rooms[$ room_get_name(global.current_level)]))
draw_text(x, y + 40, string_concat("Difficulty: ",string_upper(global.difficulty_name)))

draw_set_halign(fa_left)
draw_set_valign(fa_top)
