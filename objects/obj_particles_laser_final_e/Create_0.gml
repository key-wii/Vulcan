owner = id;
xx = x;
yy = y;
alarm_set(3, 5);

PartLaser_e = part_type_create();
part_type_speed(PartLaser_e, 35.9, 36, 2.5, .5);
part_type_shape(PartLaser_e, pt_shape_explosion);
part_type_size(PartLaser_e, 6.2, 6.3, -.03, .5);
part_type_color1(PartLaser_e, c_red);
part_type_alpha3(PartLaser_e, .2, .2, .2);
part_type_blend(PartLaser_e, true);
part_type_life(PartLaser_e, 30, 30);