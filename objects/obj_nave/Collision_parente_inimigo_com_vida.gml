/// @description Inserir descrição aqui
if alarm[0] <= 0 {
	if escudo == true{
		escudo = false;
	} else {
		vida_nave -= 1;
	}
	
	alarm[0] = 120;
	
	
	with (other){
			vida_inimigo -= 1;
		}
	
}