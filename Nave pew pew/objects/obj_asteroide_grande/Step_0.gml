/// @description Inserir descrição aqui
move_wrap(true, true, 0);

image_angle += rotacao;

if vida <= 0{
	repeat(3){
		instance_create_layer(x, y, "Instances", obj_asteroide_medio);
	}
	instance_destroy();
}