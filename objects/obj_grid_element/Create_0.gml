/// @description Add object reference in global grid

// Array position
var _x_on_grid = (x - obj_grid._grid_start_x) / obj_grid._box_size
var _y_on_grid = (y - obj_grid._grid_start_y) / obj_grid._box_size

// Obj size
var _width  = sprite_width / obj_grid._box_size;
var _height = sprite_height / obj_grid._box_size;

// Add the id of the object on the grid
for (var _i = 0; _i < _width; _i++) { 
    for (var _j = 0; _j < _height; _j++) {
        array_set(global.grid[ _j + _y_on_grid],_i + _x_on_grid, id);
    }
}
