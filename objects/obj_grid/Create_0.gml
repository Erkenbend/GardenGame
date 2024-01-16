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
    }
}
