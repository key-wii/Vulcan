owner = id;
first = false;
alarm_set(1, 1);
alarm_set(3, 25);

PartSlimeSpawn_e = part_type_create();
part_type_speed(PartSlimeSpawn_e, 3, 3, 0, 2);
part_type_shape(PartSlimeSpawn_e, pt_shape_explosion);
part_type_size(PartSlimeSpawn_e, 1.3, 1.4, -.05, .5);
part_type_color1(PartSlimeSpawn_e, c_red);
part_type_alpha3(PartSlimeSpawn_e, .4, .05, .39);
part_type_blend(PartSlimeSpawn_e, true);
part_type_life(PartSlimeSpawn_e, 25, 25);