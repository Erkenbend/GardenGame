/// @description Offer alternative keyboard bindings


// key pressed -> mouse hover effect
var _shortcut_slot_1_pressed = keyboard_check_pressed(ord("1")) || keyboard_check_pressed(ord("J"))
var _shortcut_slot_2_pressed = keyboard_check_pressed(ord("2")) || keyboard_check_pressed(ord("K"))
var _shortcut_slot_3_pressed = keyboard_check_pressed(ord("3")) || keyboard_check_pressed(ord("L"))

if _shortcut_slot_1_pressed && self.x == 704 {
	event_perform(ev_mouse, ev_mouse_enter)
}

if _shortcut_slot_2_pressed && self.x == 896 {
	event_perform(ev_mouse, ev_mouse_enter)
}

if _shortcut_slot_3_pressed && self.x == 1088 {
	event_perform(ev_mouse, ev_mouse_enter)
}

// key released -> trigger action
var _shortcut_slot_1_released = keyboard_check_released(ord("1")) || keyboard_check_released(ord("J"))
var _shortcut_slot_2_released = keyboard_check_released(ord("2")) || keyboard_check_released(ord("K"))
var _shortcut_slot_3_released = keyboard_check_released(ord("3")) || keyboard_check_released(ord("L"))

if _shortcut_slot_1_released && self.x == 704 {
	event_perform(ev_mouse, ev_left_release)
}

if _shortcut_slot_2_released && self.x == 896 {
	event_perform(ev_mouse, ev_left_release)
}

if _shortcut_slot_3_released && self.x == 1088 {
	event_perform(ev_mouse, ev_left_release)
}

if  !obj_deck.cards_clickable {
	image_alpha = 0.35
} else {
	image_alpha = 1	
}