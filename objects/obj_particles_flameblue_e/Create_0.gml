owner = id;
xx = x;
yy = y;
alarm_set(3, 18);

PartFlameBlue_e = part_type_create();
part_type_speed(PartFlameBlue_e, 1, 3, 1, .5);
part_type_shape(PartFlameBlue_e, pt_shape_smoke);
part_type_size(PartFlameBlue_e, .8, .9, -.3, .5);
part_type_color1(PartFlameBlue_e, c_blue);
part_type_alpha3(PartFlameBlue_e, .04, .04, .04);
part_type_blend(PartFlameBlue_e, true);
part_type_life(PartFlameBlue_e, 7, 7);