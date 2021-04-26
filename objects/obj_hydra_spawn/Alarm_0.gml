/*xx = x; yy = y;
if (instance_exists(obj_enemy_parent)) {
	if (obj_enemy_parent.x > x - 3 && obj_enemy_parent.x < x + 3) xx += 3;
	if (obj_enemy_parent.y > y - 3 && obj_enemy_parent.y < y + 3) yy += 3;
}
var spawn = instance_create_layer(xx, yy, "Enemy", enemy);*/
var spawn = instance_create_layer(x, y, "Enemy", enemy);
spawn.owner = owner;
spawn.index = index;
owner.head[index] = spawn;
owner.headsLeft++;
	 if (index == 0) spawn.direction = direction + 90;
else if (index == 1) spawn.direction = direction + 210;
else if (index == 2) spawn.direction = direction + 330;
if (set_hp > 0) {
	spawn.maxHp = set_hp;
	with (spawn) wheels.hp = maxHp;
}
instance_destroy();