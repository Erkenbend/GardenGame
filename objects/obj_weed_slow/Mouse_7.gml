/// @description 

event_inherited()

if (obj_deck.cards_clickable) {
	obj_player.modifiers.weed_spread_probability_multiplier = 0
	obj_deck.alarm[4] = global.powerups.temp_effect_duration
	obj_deck.cards_clickable = false
}
