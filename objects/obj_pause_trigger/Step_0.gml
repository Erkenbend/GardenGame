/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


if (room = rm_level_0 || room = rm_level_1 || room = rm_level_2) {
	if keyboard_check_pressed(vk_escape) {
		global.game_paused = !global.game_paused
		if (global.game_paused) {
			instance_deactivate_all(true)
		} else {
			instance_activate_all()	
		}
	}
}
