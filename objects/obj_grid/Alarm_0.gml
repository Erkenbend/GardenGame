/// @description Spawn weed



instance_create_layer(
	_grid_start_x + _box_size * irandom(_grid_width - 1),
	_grid_start_y + _box_size * irandom(_grid_height - 1),
	"Instances",
	obj_weed
)

alarm[0] = 120
