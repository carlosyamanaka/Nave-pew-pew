/// @description Inserir descrição aqui
var _red1 = make_colour_rgb(237, 0, 0);
var _red2 = make_colour_rgb(31, 2, 2);
var _red3 = make_colour_rgb(69, 4, 4);

particle_System = part_system_create();
particle_Emitter = part_emitter_create(particle_System);
particle_Wind = part_type_create();
part_emitter_stream(particle_System, particle_Emitter, particle_Wind, 5);

part_emitter_region(particle_System, particle_Emitter, 0, 1024, 0, 576, ps_shape_rectangle, ps_distr_linear);
part_type_shape(particle_Wind, pt_shape_cloud);
part_type_size(particle_Wind,1.5,2,0,0);
part_type_direction(particle_Wind,175, 185, 0, 0);
part_type_speed(particle_Wind, 1.8, 2, 0, 0);
part_type_alpha3(particle_Wind, 0.04, 0.03, 0.04);
part_type_colour3(particle_Wind,_red1, _red2, _red3);
part_type_life(particle_Wind, 1000, 1024);

