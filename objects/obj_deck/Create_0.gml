/// @description 




/// @description 

draw_self()

var _cards_in_deck = [obj_card_dummy_2, obj_card_dummy_1]
	
instance_create_depth(
	704, 
	928, 
	100,
	_cards_in_deck[irandom(1)]
	)

instance_create_depth(
	896, 
	928, 
	100,
	_cards_in_deck[irandom(1)]
	)

instance_create_depth(
	1088, 
	928, 
	100,
	_cards_in_deck[irandom(1)]
	)
