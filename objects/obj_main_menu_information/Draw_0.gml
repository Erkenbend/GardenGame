/// @description Print title and co
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x, y, "GardenGame")

draw_text(x, y + 20, string_concat("Level: ",global.translation.rooms[$ room_get_name(global.current_level)]))

draw_set_halign(fa_left)
draw_set_valign(fa_top)
