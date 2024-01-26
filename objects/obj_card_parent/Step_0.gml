/// @description 

var _shortcut_slot_1_pressed = keyboard_check_pressed(ord("1")) || keyboard_check_pressed(ord("J"))
var _shortcut_slot_2_pressed = keyboard_check_pressed(ord("2")) || keyboard_check_pressed(ord("K"))
var _shortcut_slot_3_pressed = keyboard_check_pressed(ord("3")) || keyboard_check_pressed(ord("L"))


if _shortcut_slot_1_pressed && self.x == 704 {
	event_perform(ev_mouse, ev_left_button)
}

if _shortcut_slot_2_pressed && self.x == 896 {
	show_debug_message("Im a W")
}

if _shortcut_slot_3_pressed && self.x == 1088 {
	show_debug_message("Im a E")
}





