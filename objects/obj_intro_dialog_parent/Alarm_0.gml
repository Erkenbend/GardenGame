/// @description increase opacity

if alpha < 1 {
	alpha = min(1, alpha + global.dialog.opacity_speed)
	alarm[0] = 1
}
