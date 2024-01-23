/// @description 


instance_destroy()

var _rand = irandom(global.cards_in_deck_count - 1)
show_debug_message(_rand)

instance_create_depth(
	self.bbox_left, 
	self.bbox_top, 
	-100,
	global.cards_in_deck[_rand]
)

