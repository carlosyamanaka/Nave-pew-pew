if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
	sprite_index = spr_nave_animada;
	speed = 2;
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
	sprite_index = spr_nave_animada;
	speed = -2;
} else{
	sprite_index = spr_nave_parada;
	speed = 0;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
	direction += 3;
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
	direction -= 3;
}
image_angle = direction;

move_wrap(true, true, 0);
