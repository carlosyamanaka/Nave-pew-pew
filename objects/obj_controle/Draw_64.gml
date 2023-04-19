/// @description Inserir descrição aqui
draw_set_font(fnt_basica);

//Desenhar Vida
var _multiplicador = 0;
var _espaco = 12;
if instance_exists(obj_nave) {
    repeat(obj_nave.vida_nave){
        draw_sprite_ext(spr_coracao_vida, 0, 22 + _espaco * _multiplicador, 28, 1.3, 1.3, 0, c_white, 1);
        _multiplicador++;
    }
}

draw_text_color(20, 40, "Pontuacao: " + string(global.pont), c_white, c_white, c_white, c_white, 1);
