/// @description Debug: Draw grid

draw_set_alpha(.5)
draw_set_color(c_green)

/*
for (var _i = 0; _i <= _grid_height; _i++){
    draw_line(
		_grid_start_x,
		_grid_start_y + _i*_box_size,
		_grid_start_x + _grid_width*_box_size,
		_grid_start_y + _i*_box_size
	)
}

for (var _j = 0; _j <= _grid_width; _j++) {
    draw_line(
		_grid_start_x + _j*_box_size, 
		_grid_start_y, 
		_grid_start_x + _j*_box_size, 
		_grid_start_y + _grid_height*_box_size
	)
}
*/

/*
// Display values
for (var _i = 0; _i < _grid_height; _i++) {
    for (var _j = 0; _j < _grid_width; _j++) {
        var _value = array_get(global.grid[_i], _j);
        if(_value != 0) {
            draw_set_color(c_red);
            draw_rectangle(
				_grid_start_x + _j * _box_size,
				_grid_start_y + _i * _box_size,
				_grid_start_x + (_j + 1) * _box_size,
				_grid_start_y + (_i + 1) * _box_size,
				false
			);
        }
    }
}
*/

// Reset opacity & color
draw_set_color(c_white)
draw_set_alpha(1)
