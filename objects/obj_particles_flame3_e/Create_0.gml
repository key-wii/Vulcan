owner = id;
xx = x;
yy = y;
alarm_set(3, 18);

PartFlame_e = part_type_create();
part_type_speed(PartFlame_e, 1, 1.5, 1, .5);
part_type_shape(PartFlame_e, pt_shape_smoke);
part_type_size(PartFlame_e, 2.3, 2.4, -.1, .5);
part_type_color1(PartFlame_e, c_orange);
part_type_alpha3(PartFlame_e, .045, .045, .045);
part_type_blend(PartFlame_e, true);
part_type_life(PartFlame_e, 18, 18);