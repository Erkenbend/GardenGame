/// @description Spawn weed

while (true) {
	if (instance_number(obj_weed) >= global.weed_growth.max_instance_count) {
		show_debug_message("Max number of weed instances reached")
		break
	}

	x_pos = _grid_start_x + _box_size * irandom(_grid_width - 1)
	y_pos = _grid_start_y + _box_size * irandom(_grid_height - 1)
	
	// check against "middle center" of the rock object to avoid RANDBEDINGUNG
	if (!instance_position(x_pos + 16, y_pos + 16, obj_rock)) {
		instance_create_layer(x_pos, y_pos,	"Instances", obj_weed)
		break
	} else {
		show_debug_message("Need to retry weed placement")
	}
}

alarm[0] = global.weed_growth.delay_spawn_small
