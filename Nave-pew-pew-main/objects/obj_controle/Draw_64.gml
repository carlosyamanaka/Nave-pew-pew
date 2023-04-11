/// @description Inserir descrição aqui
var _c = make_color_rgb(255, 255, 255);

draw_set_font(fnt_basica);
draw_text_color(20, 20, "Vidas: " + string(obj_nave.vida), _c, _c, _c, _c, 1);
draw_text_color(20, 40, "Pontuacao: " + string(global.pont), c_white, c_white, c_white, c_white, 1);
