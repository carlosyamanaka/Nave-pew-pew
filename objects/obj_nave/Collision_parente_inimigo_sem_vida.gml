if alarm[0] <= 0 {
	if escudo == true{
		escudo = false;
	} else {
		vida_nave -= 1;
	}
	
	with (other){
			instance_destroy();
		}

		alarm[0] = 120;
}