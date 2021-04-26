owner = id;
xx = x;
yy = y;
alarm_set(3, 18);

PartFlameBlue_big_e = part_type_create();
part_type_speed(PartFlameBlue_big_e, 1, 2, .7, .5);
part_type_shape(PartFlameBlue_big_e, pt_shape_smoke);
part_type_size(PartFlameBlue_big_e, 2.5, 2.6, -1, .5);
part_type_color1(PartFlameBlue_big_e, c_blue);
part_type_alpha3(PartFlameBlue_big_e, .04, .04, .04);
part_type_blend(PartFlameBlue_big_e, true);
part_type_life(PartFlameBlue_big_e, 14, 14);