/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

alvo_x = obj_nave.x;
alvo_y = obj_nave.y;

image_angle = point_direction(x, y, alvo_x, alvo_y);

//Ataque olho
if (current_time - last_attack_time >= 1380 / attack_speed) {
	var  inst = instance_create_layer(x, y, "Instances", obj_projetil_inimigo);
	inst.speed = 4;
	inst.direction = point_direction(x, y, alvo_x, alvo_y);
	inst.image_angle = image_angle;
	inst.dano = 1;

	// Atualizar o tempo do último ataque
	last_attack_time = current_time;
}
	
if vida_inimigo <= 0{
	audio_play_sound(snd_explosao_asteroide, 1, false);
	global.pont += 15;
	repeat(5){
		instance_create_layer(x, y, "Instances", obj_detritos);
	}
	instance_destroy();
}