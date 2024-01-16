/// @description Create grid

depth = -1000;

_grid_width = 36
_grid_height = 20
_box_size = 32

_grid_start_x = 100
_grid_start_y = 300

for(var _i = 0; _i < _grid_height; _i++) {
    for(var _j = 0; _j < _grid_width; _j++) {
        global.grid[_i, _j] = 0
    }
}
