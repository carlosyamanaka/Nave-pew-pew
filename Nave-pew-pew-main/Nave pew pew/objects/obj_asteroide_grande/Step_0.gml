/// @description Inserir descrição aqui
move_wrap(true, true, 0);

image_angle += rotacao;

if vida <= 0{
	audio_play_sound(snd_explosao_asteroide, 1, false);
	global.pont += 10;
	repeat(3){
		instance_create_layer(x, y, "Instances", obj_asteroide_medio);
	}
	instance_destroy();
	repeat(8){
		instance_create_layer(x, y, "Instances", obj_detritos);
	}
}