/// @description Go to game room
event_inherited()

if global.skip_intro {
	room_goto(global.current_level)
} else {
	global.skip_intro = true
	room_goto(rm_intro)
}
