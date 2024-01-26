/// @description 

event_inherited()

if (obj_deck.cards_clickable) {
	obj_player.modifiers.debris_immunity = true
	obj_deck.alarm[3] = global.powerups.temp_effect_duration
	obj_deck.cards_clickable = false
}
