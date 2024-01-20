/// @description Print score
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x, y, string_concat("Score: ", global.score))
draw_text(x, y + 12, string_concat("Highscore: ", global.score <= global.high_score ? string(global.high_score): "New Highscore!"))

draw_set_halign(fa_left)
draw_set_valign(fa_top)
