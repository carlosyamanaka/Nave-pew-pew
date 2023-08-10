/// @description Spawnar melees
repeat(3){
	instance_create_layer(room_width, random_range(0, room_height), "Instances", obj_asteroide_medio);
}
alarm[1] = 120;