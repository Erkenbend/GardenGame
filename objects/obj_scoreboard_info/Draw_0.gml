/// @description Draws current scoreboard
var _draw_highscore = function(_x, _difficulty) {
	draw_text(_x, y, string_upper(_difficulty))
	draw_text(_x,y + 20, string_concat(global.translation.rooms.rm_level_0, ": ", global.high_score[$ _difficulty].rm_level_0 ))
	draw_text(_x,y + 40, string_concat(global.translation.rooms.rm_level_1, ": ", global.high_score[$ _difficulty].rm_level_1 ))
}

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

_draw_highscore(x - 200, "easy")
_draw_highscore(x, "normal")
_draw_highscore(x + 200, "hard")

draw_set_halign(fa_left)
draw_set_valign(fa_top)
