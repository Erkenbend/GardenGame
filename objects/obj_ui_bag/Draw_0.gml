/// @description  Show bag content

draw_set_font(fnt_info)

draw_text(
	x + 5,
	y,
	string_concat(
		"Bag: ",
		global.bag_content,
		" / ",
		global.bag_capacity + obj_player.modifiers.extra_bag_capacity
	)
)

draw_set_font(fnt_default)
