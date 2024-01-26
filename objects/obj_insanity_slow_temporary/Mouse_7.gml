/// @description 

// Inherit the parent event
event_inherited();

if (obj_deck.cards_clickable) {
	obj_player.modifiers.insanity_multiplier *= 0.0
	show_debug_message("test")
	//obj_deck.alarm[7] = 240
	obj_deck.cards_clickable = false
}
