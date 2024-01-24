/// @description 


instance_destroy(obj_card_parent)

var _rand = irandom(global.cards_in_deck_count - 1)
show_debug_message(_rand)

instance_create_depth(
	704, 
	928, 
	-100,
	global.cards_in_deck[irandom(global.cards_in_deck_count - 1)]
)

instance_create_depth(
	896, 
	928, 
	-100,
	global.cards_in_deck[irandom(global.cards_in_deck_count - 1)]
)

instance_create_depth(
	1088, 
	928, 
	-100,
	global.cards_in_deck[irandom(global.cards_in_deck_count - 1)]
)
