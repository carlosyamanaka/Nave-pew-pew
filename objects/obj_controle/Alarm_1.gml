/// @description Spawnar meelees
repeat(3){
	instance_create_layer(room_width, random_range(0, room_height), layer, obj_asteroide_medio);
}
alarm[1] = 120;