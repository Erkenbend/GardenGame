/// @description 

if (obj_deck.cards_clickable) {
	recently_clicked = true
	alarm[0] = global.powerups.recently_clicked_duration

	obj_deck.alarm[0] = global.powerups.click_cooldown * global.difficulty_multiplier
	obj_deck.cards_clickable = false

	// destroy all cards
	instance_destroy(obj_card_parent)

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
}
