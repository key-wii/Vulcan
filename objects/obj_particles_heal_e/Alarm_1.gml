var ran = irandom(360);
var xx = lengthdir_x(15, ran);
var yy = lengthdir_y(15, ran);

var ranx = irandom_range(-10, 10);
var rany = irandom_range(-10, 10);
part_particles_create(global.P_System, x + xx + ranx, y + yy + rany, global.PartHeal, 1);
alarm_set(1, 1);