/// @description Print score

draw_set_font(fnt_info)
draw_set_color(c_black)

draw_set_halign(fa_left)
draw_set_valign(fa_middle)

draw_text(x + 70, y - 10, string_concat("Score: ", global.score))
var _high_score = global.high_score[$ global.difficulty_name][$ room_get_name(global.current_level)]

draw_text(x + 70, y + 22, string_concat("Highscore: ", global.score <= _high_score ? string(_high_score): "New Highscore!"))

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_set_font(fnt_default)
