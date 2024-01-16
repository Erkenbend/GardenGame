/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Array position
var _x = (x - obj_grid._grid_start_x) / obj_grid._box_size
var _y = (y - obj_grid._grid_start_y) / obj_grid._box_size

// Obj size
var _width  = sprite_width /obj_grid._box_size;
var _height = sprite_height / obj_grid._box_size;

// Add the id of the object on the grid
for (var _i = 0; _i < _width; _i++) { 
    for (var _j = 0; _j < _height; _j++) {
        // Add id to the array
        array_set(global.grid[ _j + _y],_i + _x, id);
    }
}
show_debug_message(global.grid)