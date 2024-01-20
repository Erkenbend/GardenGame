/// @description Create grid

depth = -1000;

_cannot_spawn_weed_on = [
	obj_compost,
	obj_rock,
	obj_testwall,
	obj_weed
]

_can_spawn_weed = function (_x_pos, _y_pos) {
	var _array_size = array_length(_cannot_spawn_weed_on)
	// check against "middle center" of the object to avoid RANDBEDINGUNG
	for(var _i = 0; _i < _array_size; _i++) {
		if (instance_position(_x_pos + 16, _y_pos + 16, _cannot_spawn_weed_on[_i])) {
			return false
		}
	}
	return true
}

// short names for global properties
_grid_width = global.grid_properties.grid_width
_grid_height = global.grid_properties.grid_height
_box_size = global.grid_properties.box_size
_grid_start_x = global.grid_properties.grid_start_x
_grid_start_y = global.grid_properties.grid_start_y

for(var _i = 0; _i < _grid_height; _i++) {
    for(var _j = 0; _j < _grid_width; _j++) {
		
        global.grid[_i, _j] = 0
		
		x_pos = _grid_start_x + _box_size * _j
		y_pos = _grid_start_y + _box_size * _i
		
		// check if there is no other object drawn on the grid field
		if (!instance_position(x_pos, y_pos, obj_grid_element)) {
			// I'm sorry for this..
			// Draw alternating light and dark gras and offset on uneven rows
			if ( (_i % 2 == 0 && _j % 2 == 1) || (_i % 2 == 1 && _j % 2 == 0) ) {
				a = instance_create_layer(x_pos, y_pos, "Instances", obj_grass_light)
				a.depth = 150
			} else {
				b = instance_create_layer(x_pos, y_pos, "Instances", obj_grass_dark)
				b.depth = 150
			}
		}
    }
}

show_debug_message(global.grid)

// spawn first weed
alarm[0] = global.weed_growth.delay_initial_spawn
