/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if global.game_paused {
if !surface_exists(paused_surf)
			{
			if paused_surf == -1
				{
				instance_deactivate_all(true);
				}
			paused_surf = surface_create(room_width, room_height);
			surface_set_target(paused_surf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
			}
		else
			{
			draw_surface(paused_surf, 0, 0);
			draw_set_alpha(0.5);
			draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
			draw_set_alpha(1);
			draw_set_halign(fa_center);
			draw_text_transformed_colour(room_width / 2, room_height / 3, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
			instance_create_depth(room_width / 2, room_height / 2, 0, obj_button_continue)
			instance_create_depth(room_width / 2, room_height / 2 + 50, 0, obj_button_main_menu)
			draw_set_halign(fa_left);
			}
} else {
	if instance_exists(obj_button_continue) {
		instance_destroy(obj_button_continue)				
	}	

	if instance_exists(obj_button_main_menu) {
		instance_destroy(obj_button_main_menu)				
	}	
	instance_activate_all()
}


