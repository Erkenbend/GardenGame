/// @description  Show bag content

draw_text(
	x,
	y,
	string_concat(
		"Bag: ",
		global.bag_content,
		" / ",
		global.bag_capacity + obj_player.modifiers.extra_bag_capacity
	)
)
