/// @description 
event_inherited();

if (obj_deck.cards_clickable) {
	obj_player.modifiers.move_speed_permanent_multiplier *= 1.1
	obj_deck.cards_clickable = false
}