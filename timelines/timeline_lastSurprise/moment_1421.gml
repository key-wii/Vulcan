var player_exists = instance_exists(obj_tank_pilot)
if (!player_exists) exit;

//pick how many enemies to spawn
var _spawnNum = 1;

if (loop < 50) var l = loop mod 4;
else var l = irandom_range(0, 3);
switch (l) {
	case 0: var enemy1 = obj_npc_final3; break;
	case 1: var enemy1 = obj_npc_final4; break;
	case 2: var enemy1 = obj_npc_final1; break;
	case 3: var enemy1 = obj_npc_final2; break;
}

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
xx = room_width / 2; yy = room_height / 2;
if (!instance_exists(obj_tank_pilot)) exit;
var radius = 200 + irandom(800);
var angle = random(360);
xx = xx + cos(angle) * radius;
yy = yy + sin(angle) * radius;

if (loop < 60) {
	loop++;
	timeline_position = 1411;
}