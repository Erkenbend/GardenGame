/// @description Print title and co
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x, y, "GardenGame")

draw_text(x, y + 20, string_concat("Highscore: " , global.high_score))

draw_set_halign(fa_left)
draw_set_valign(fa_top)