if (hit) part_type_color1(global.PartFinal, $261E20);
else if (beat) part_type_color1(global.PartFinal, $6B7325);
else part_type_color1(global.PartFinal, $0B1A0B);

var ran = irandom(360);
var xx = lengthdir_x(200, ran);
var yy = lengthdir_y(200, ran);

var ranx = irandom_range(-10, 10);
var rany = irandom_range(-10, 10);
part_particles_create(global.P_System, x + xx + ranx, y + yy + rany, global.PartFinal, 1);
alarm_set(1, 1);