/// @description 

event_inherited()

if (obj_deck.cards_clickable) {
	obj_player.modifiers.move_speed_temporary_multiplier = global.player_movement.move_speed_temporary_multiplier
	obj_deck.alarm[2] = global.powerups.temp_effect_duration
	obj_deck.cards_clickable = false
}
