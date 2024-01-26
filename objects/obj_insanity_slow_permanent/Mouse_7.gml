/// @description 

// Inherit the parent event
event_inherited();

if (obj_deck.cards_clickable) {
	obj_player.modifiers.insanity_multiplier *= 0.8
	obj_deck.cards_clickable = false
}
