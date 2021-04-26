owner = id;
xx = x;
yy = y;
alarm_set(3, 6);

PartFlame_e = part_type_create();
part_type_direction(PartFlame_e, 90, 90, 0, 1);
part_type_speed(PartFlame_e, 3.6, 4, 1, .5);
part_type_shape(PartFlame_e, pt_shape_smoke);
part_type_size(PartFlame_e, 3.8, 3.9, -.08, .5);
part_type_color1(PartFlame_e, c_orange);
part_type_alpha2(PartFlame_e, .065, .001);
part_type_blend(PartFlame_e, true);
part_type_life(PartFlame_e, 30, 30);