if (splitMore == 0) exit;
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss3);
expl.xx = xx; expl.yy = yy;
expl.dis = dis;
expl.splitMore = 0;
maxDis += 30 * splitMore;
expl.maxDis = maxDis;
if (splitMore == 2) {
	expl.direction = direction + 35;
	direction -= 35;
}