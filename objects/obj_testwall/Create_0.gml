/// @description Add wall object to grid


var _x = (x - obj_grid._grid_start_x) / obj_grid._box_size
var _y = (y - obj_grid._grid_start_y) / obj_grid._box_size

array_set(global.grid[_y], _x, id)
