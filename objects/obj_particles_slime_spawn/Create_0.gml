owner = id;
xx = x;
yy = y;
count = 0;
alarm_set(1, 1);
alarm_set(3, 20);

PartSlimeSpawn_e = part_type_create();
part_type_speed(PartSlimeSpawn_e, 5.9, 6, 6, 3);
part_type_direction(PartSlimeSpawn_e, 0, 360, 50, 1);
part_type_shape(PartSlimeSpawn_e, pt_shape_explosion);
part_type_size(PartSlimeSpawn_e, 2.3, 2.4, -.13, .5);
part_type_color1(PartSlimeSpawn_e, c_red);
part_type_alpha3(PartSlimeSpawn_e, .0, .2, .5);
part_type_blend(PartSlimeSpawn_e, true);
part_type_life(PartSlimeSpawn_e, 20, 20);