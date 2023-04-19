/// @description Inserir descrição aqui
if x < 0 and y < 0 {
	instance_destroy();
}

image_angle += rotacao;

if vida_inimigo <= 0{
	audio_play_sound(snd_explosao_asteroide, 1, false);
	global.pont += 2;
	repeat(3){
		instance_create_layer(x, y, "Instances", obj_detritos);
	}
	instance_destroy();
}
