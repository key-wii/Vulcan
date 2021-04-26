var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
with (spawn) {
	enemy = obj_enemy_swirler;
	image_xscale = 3;
	image_yscale = 3;
	image_speed = .12;
	alarm_set(0, 330);
	//alarm_set(0, 1);
}

var spawn = instance_create_layer(xx + 1020, yy + 1020, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_dizzy_boss_rematch;
spawn.image_xscale = 2;
spawn.image_yscale = 2;
with (spawn) alarm_set(0, 330);
	spawn = instance_create_layer(xx - 1020, yy + 1020, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_dizzy_boss_rematch;
spawn.image_xscale = 2;
spawn.image_yscale = 2;
with (spawn) alarm_set(0, 330);
	spawn = instance_create_layer(xx + 1020, yy - 1020, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_dizzy_boss_rematch;
spawn.image_xscale = 2;
spawn.image_yscale = 2;
with (spawn) alarm_set(0, 330);
	spawn = instance_create_layer(xx - 1020, yy - 1020, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_dizzy_boss_rematch;
spawn.image_xscale = 2;
spawn.image_yscale = 2;
with (spawn) alarm_set(0, 330);

instance_create_layer(xx + 892, yy - 892, "Floor", obj_enemy_hive);
instance_create_layer(xx - 892, yy + 892, "Floor", obj_enemy_hive);
instance_create_layer(xx + 892, yy + 892, "Floor", obj_enemy_hive);
instance_create_layer(xx - 892, yy - 892, "Floor", obj_enemy_hive);