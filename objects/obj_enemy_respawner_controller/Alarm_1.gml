var h1 = instance_exists(head[0]);
var h2 = instance_exists(head[1]);
var h3 = instance_exists(head[2]);

var rr = radius;
if (radDown) {
	rr -= 11;
	if (rr < minRadius) rr = minRadius + (minRadius - rr);
} else {
	rr += 11;
	if (rr > maxRadius) rr = maxRadius - (rr - maxRadius);
}
var rMultiplier = rr / 90;
var xx1 = lengthdir_x(rr, direction + 210 + rotCount + (rotDir / 2) * 11); var yy1 = lengthdir_y(rr, direction + 210 + rotCount + (rotDir / 2) * 11);
var xx2 = lengthdir_x(rr, direction + 330 + rotCount + (rotDir / 2) * 11); var yy2 = lengthdir_y(rr, direction + 330 + rotCount + (rotDir / 2) * 11);
var xx3 = lengthdir_x(rr, direction + 90 + rotCount + (rotDir / 2) * 11);  var yy3 = lengthdir_y(rr, direction +  90 + rotCount + (rotDir / 2) * 11);
var rad0 = point_distance(x, y, x + xx1, y + yy1); var phs0 = point_direction(x, y, x + xx1, y + yy1);
var rad1 = point_distance(x, y, x + xx2, y + yy2); var phs1 = point_direction(x, y, x + xx2, y + yy2);
var rad2 = point_distance(x, y, x + xx3, y + yy3); var phs2 = point_direction(x, y, x + xx3, y + yy3);

if (!h1) {
	var hx1 = x + rad0 * dcos(phs0) * rMultiplier;
	var hy1 = y - rad0 * dsin(phs0) * rMultiplier;
	head[0] = instance_create_layer(hx1, hy1, "Enemy", obj_hydra_spawn);
	head[0].image_xscale = 3; head[0].image_yscale = 3; 
	head[0].enemy = obj_enemy_respawner;
	head[0].owner = id;
	head[0].index = 0;
	killx[0] = hx1; killy[0] = hy1; 
}
if (!h2) {
	var hx2 = x + rad1 * dcos(phs1) * rMultiplier;
	var hy2 = y - rad1 * dsin(phs1) * rMultiplier;
	head[1] = instance_create_layer(hx2, hy2, "Enemy", obj_hydra_spawn);
	head[1].image_xscale = 3; head[1].image_yscale = 3; 
	head[1].enemy = obj_enemy_respawner;
	head[1].owner = id;
	head[1].index = 1;
	killx[1] = hx2; killy[1] = hy2; 
}
if (!h3) {
	var hx3 = x + rad2 * dcos(phs2) * rMultiplier;
	var hy3 = y - rad2 * dsin(phs2) * rMultiplier;
	head[2] = instance_create_layer(hx3, hy3, "Enemy", obj_hydra_spawn);
	head[2].image_xscale = 3; head[2].image_yscale = 3; 
	head[2].enemy = obj_enemy_respawner;
	head[2].owner = id;
	head[2].index = 2;
	killx[2] = hx3; killy[2] = hy3; 
}
alarm_set(0, 1);