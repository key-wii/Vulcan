var player_exists = instance_exists(obj_tank_pilot)
if (!player_exists) exit;

//pick how many enemies to spawn
var _spawnNum = 1;

var enemy1 = obj_npc_final2;

if (quickSpawn) {
	var spawner = obj_enemy_spawn_fast;
	quickSpawn = false;
} else var spawner = obj_enemy_spawn;
//decide where they will spawn
	var enemy;
	
	if (_spawnNum >= 1) {
		enemy = enemy1;
		var spawn1 = instance_create_layer(xx, yy, "Enemy", spawner);
	}


//spawn these enemies
if (_spawnNum >= 1) spawn1.enemy = enemy1;

//change xx & yy
if (!instance_exists(obj_tank_pilot)) exit;
var radius = 90;
var angle = point_direction(xx, yy, obj_tank_pilot.x, obj_tank_pilot.y);
xx = xx + cos(angle) * radius;
yy = yy + sin(angle) * radius;