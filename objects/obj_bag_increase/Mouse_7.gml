/// @description 

event_inherited()

if (obj_deck.cards_clickable) {
	obj_player.modifiers.extra_bag_capacity += 2
	obj_deck.cards_clickable = false
}
