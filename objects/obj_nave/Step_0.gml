// Definir as direções do movimento
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
up = keyboard_check(vk_up) || keyboard_check(ord("W"));
left = keyboard_check(vk_left) || keyboard_check(ord("A"));
down = keyboard_check(vk_down) || keyboard_check(ord("S"));

hsp = (right - left);
vsp = (down - up);

move_dir = point_direction(x, y, x + hsp, y + vsp);
if (hsp != 0 or vsp != 0) {
	spd = 2;
} else {
	spd = 0;
}

if (image_alpha > 0) {
    player_position_x = obj_nave.x; //setting the player's new x position
    player_position_y = obj_nave.y; //setting the player's new y position
}
	
	
//Bloco de controle para ver qual sprite será executado
if (verificacao_escudo_ativo == false){
	if(escudo == true){
		if (hsp != 0 or vsp != 0) {
			spd = 2;
			sprite_index = spr_nave_escudo_andando;
		} else {
			spd = 0;
			sprite_index = spr_nave_escudo_parada;
		}
	} else if(verificacao_projetil_ativo == true){
		if (hsp != 0 or vsp != 0) {
			spd = 2;
			sprite_index = spr_nave_projetil_andando;
		} else {
			spd = 0;
			sprite_index = spr_nave_projetil_parada;
		}
	} else {
		if(hsp !=0 or vsp != 0){
		sprite_index = spr_nave_andando;
		} else{
			sprite_index = spr_nave_parada;
		}
	}
}

	hsp = lengthdir_x(spd, move_dir);
	vsp = lengthdir_y(spd, move_dir);
	
// Atualizar a posição do objeto
x += hsp;
y += vsp;
	

// calcular a direção do mouse em relação ao objeto principal
var dir = point_direction(x, y, mouse_x, mouse_y);

// definir a direção do objeto principal como a direção do mouse
image_angle = dir;


if keyboard_check(vk_space) || mouse_check_button(mb_left){

	// Verificar se o personagem pode atacar novamente
	if (current_time - last_attack_time >= 240 / attack_speed) {
		audio_play_sound(snd_projetil, 1, false);
		var  inst = instance_create_layer(x, y, "Instances", obj_projetil);
		inst.speed = 8;
		inst.direction = image_angle;
		inst.image_angle = image_angle;
		inst.dano = dano_nave;

	    // Atualizar o tempo do último ataque
	    last_attack_time = current_time;
	}

}

if alarm[0] > 0{
	if image_alpha <= 0 {
		alfa_add = 0.05;
	} else if image_alpha >= 1 {
		alfa_add = -0.05;
	}
	image_alpha	+= alfa_add;
} else {
	image_alpha = 1;
}
//Se sair do mapa ele volta
move_wrap(true, true, 0);