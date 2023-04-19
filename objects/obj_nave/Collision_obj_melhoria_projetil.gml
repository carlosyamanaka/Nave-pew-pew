audio_play_sound(snd_melhoria, 1, false);
dano_nave = 2;
verificacao_projetil_ativo = true;
alarm[2] = 300;
with(other){
	instance_destroy();
}