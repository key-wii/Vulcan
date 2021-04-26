if (enemy == noone) instance_destroy(); 
xx = x; yy = y;
if (instance_exists(obj_enemy_parent)) {
	if (obj_enemy_parent.x > x - 3 && obj_enemy_parent.x < x + 3) xx += 3;
	if (obj_enemy_parent.y > y - 3 && obj_enemy_parent.y < y + 3) yy += 3;
}
if (string_count("controller", object_get_name(enemy)) > 0) var llayer = "Floor";
//else if (enemy == obj_enemy_dragonfly_s || enemy == obj_enemy_bbbird_s) var llayer = "Enemy_Above";
else var llayer = "Enemy";
var spawn = instance_create_layer(xx, yy, llayer, enemy);
if (set_dir != 1000)
	spawn.direction = set_dir;
if (set_hp > 0) {
	spawn.maxHp = set_hp;
	with (spawn) wheels.hp = maxHp;
}
instance_destroy();