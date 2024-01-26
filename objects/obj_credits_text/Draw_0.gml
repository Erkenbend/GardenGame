/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

y_current = y

draw_text_transformed(x, y_current, text, scale, scale, rotation)

var _draw_used_sound = function(_element, _index)
{
	y_current += text_height
	draw_text_transformed(x, y_current, _element, scale, scale, rotation)
}

array_foreach(sounds, _draw_used_sound)

draw_text_transformed(
	x,
	y_current + 3 * text_height,
	"All other assets (sprites, music, SFX) were hand made during the January 2024 Pirate-Software Game-Jam",
	scale,
	scale,
	rotation
)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
