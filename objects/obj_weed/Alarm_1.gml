/// @description cut down
if !place_meeting(x,y,obj_player) {
	exit
}
if (global.bag_content < global.bag_capacity) {
    global.bag_content++
} else {
    instance_create_layer(x - 20, y - 100, "Instances", obj_info_bag_full)
}

instance_destroy()
