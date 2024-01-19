/// @description Spawn weed

x_pos = _grid_start_x + _box_size * irandom(_grid_width - 1)
y_pos = _grid_start_y + _box_size * irandom(_grid_height - 1)


// ToDo: make this work - don't let weeds spawn on solids (like rocks)
while(instance_position(x_pos, y_pos, obj_rock)){
	show_debug_message("test")
	x_pos = _grid_start_x + _box_size * irandom(_grid_width - 1)
	y_pos = _grid_start_y + _box_size * irandom(_grid_height - 1)
} 

instance_create_layer(x_pos, y_pos,	"Instances", obj_weed)


alarm[0] = 120
