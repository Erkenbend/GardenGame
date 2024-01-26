/// @description Draws current scoreboard
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x,y, string_concat(global.translation.rooms.rm_level_0, ":", global.high_score.rm_level_0 ))
draw_text(x,y + 20, string_concat(global.translation.rooms.rm_level_1, ":", global.high_score.rm_level_1 ))

draw_set_halign(fa_left)
draw_set_valign(fa_top)
