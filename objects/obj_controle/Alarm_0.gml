/// @description Criar melhoria
var melhoria = choose(obj_melhoria_escudo, obj_melhoria_projetil);
instance_create_layer(room_width, random_range(0, room_height), "Instances", melhoria);
alarm[0] = 360;