/// @description Grow to next stage if possible

switch sprite_index {
	case spr_weed_small:
		sprite_index = spr_weed_medium
		alarm[0] = random_range(global.weed_growth.delay_medium_to_big - global.weed_growth.delay_random_variability / 2, global.weed_growth.delay_medium_to_big + global.weed_growth.delay_random_variability / 2)
		break
	case spr_weed_medium:
		sprite_index = spr_weed_big
		alarm[0] = random_range(global.weed_growth.delay_big_to_spread - global.weed_growth.delay_random_variability / 2, global.weed_growth.delay_big_to_spread + global.weed_growth.delay_random_variability / 2)
		break
	case spr_weed_big:
		sprite_index = spr_weed_small
		alarm[0] = random_range(global.weed_growth.delay_small_to_medium - global.weed_growth.delay_random_variability / 2, global.weed_growth.delay_small_to_medium + global.weed_growth.delay_random_variability / 2)
		
		// TODO: refactor into function
		if (place_free(x, y - global.grid_properties.box_size) && !place_meeting(x, y - global.grid_properties.box_size, obj_weed)) {
			instance_create_layer(x, y - global.grid_properties.box_size, "Instances", obj_weed)
		}
		if (place_free(x, y + global.grid_properties.box_size) && !place_meeting(x, y + global.grid_properties.box_size, obj_weed)) {
			instance_create_layer(x, y + global.grid_properties.box_size, "Instances", obj_weed)
		}
		if (place_free(x + global.grid_properties.box_size, y) && !place_meeting(x + global.grid_properties.box_size, y, obj_weed)) {
			instance_create_layer(x + global.grid_properties.box_size, y, "Instances", obj_weed)
		}
		if (place_free(x - global.grid_properties.box_size, y) && !place_meeting(x - global.grid_properties.box_size, y, obj_weed)) {
			instance_create_layer(x - global.grid_properties.box_size, y, "Instances", obj_weed)
		}

		instance_destroy()
		break
}
