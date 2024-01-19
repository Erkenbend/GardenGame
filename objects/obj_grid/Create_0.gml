/// @description Create grid

depth = -1000;

_grid_width = 36
_grid_height = 20
_box_size = 32

// offset has to be a multiple of box size!
_grid_start_x = 128
_grid_start_y = 256

// idea for centered grid
//_grid_start_x = (browser_width - _grid_width * _box_size) / 2
//_grid_start_y = (browser_height - _grid_height * _box_size) / 2
for(var _i = 0; _i < _grid_height; _i++) {
    for(var _j = 0; _j < _grid_width; _j++) {
		
        global.grid[_i, _j] = 0
		
		x_pos = _grid_start_x + _box_size * _j
		y_pos = _grid_start_y + _box_size * _i
		
		// check if there is no other object drawn on the grid field
		if (!instance_position(x_pos, y_pos, obj_grid_element)){
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
