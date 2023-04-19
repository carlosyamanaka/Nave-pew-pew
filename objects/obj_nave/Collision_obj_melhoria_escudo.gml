audio_play_sound(snd_melhoria, 1, false);
escudo = true;
alarm[1] = 300;


//Animação
if(escudo = false){
	sprite_index = spr_nave_escudo_animacao;
	verificacao_escudo_ativo = true;
	alarm[3] = 6;
}

with(other){
	instance_destroy();
}