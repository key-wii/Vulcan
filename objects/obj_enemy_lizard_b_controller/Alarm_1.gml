var h1 = instance_exists(head[0]);
var h2 = instance_exists(head[1]);
var h3 = instance_exists(head[2]);
if (!h1) {
	var hx1 = x + rad[0] * dcos(phs[0] + (11 * spd)) * radiusMultiplier;
	var hy1 = y - rad[0] * dsin(phs[0] + (11 * spd)) * radiusMultiplier;
	head[0] = instance_create_layer(hx1, hy1, "Enemy", obj_hydra_spawn);
	head[0].enemy = obj_enemy_lizard_b;
	head[0].owner = id;
	head[0].index = 0;
	killx[0] = hx1; killy[0] = hy1; 
}
if (!h2) {
	var hx2 = x + rad[1] * dcos(phs[1] + (11 * spd)) * radiusMultiplier;
	var hy2 = y - rad[1] * dsin(phs[1] + (11 * spd)) * radiusMultiplier;
	head[1] = instance_create_layer(hx2, hy2, "Enemy", obj_hydra_spawn);
	head[1].enemy = obj_enemy_lizard_b;
	head[1].owner = id;
	head[1].index = 1;
	killx[1] = hx2; killy[1] = hy2; 
}
if (!h3) {
	var hx3 = x + rad[2] * dcos(phs[2] + (11 * spd)) * radiusMultiplier;
	var hy3 = y - rad[2] * dsin(phs[2] + (11 * spd)) * radiusMultiplier;
	head[2] = instance_create_layer(hx3, hy3, "Enemy", obj_hydra_spawn);
	head[2].enemy = obj_enemy_lizard_b;
	head[2].owner = id;
	head[2].index = 2;
	killx[2] = hx3; killy[2] = hy3; 
}
alarm_set(0, 1);