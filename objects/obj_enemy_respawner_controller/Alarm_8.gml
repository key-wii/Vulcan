if (global.level == 9) {
	with (obj_spawner) {
		alarm_set(6, 1);
		global.boss_just_killed = true;
		alarm_set(5, 180);
	}
	with (obj_enemy_fly_move_parent) leave = true;
}
else {
	global.boss_just_killed = true;
	with (obj_spawner) {
		timeline_index = timelineDrag_beatBoss;
		timeline_loop = false;
		timeline_position = 0;
		timeline_running = true;
	}
	instance_create_layer(x, y, "UI", obj_spawner_corners);
}
instance_destroy(obj_enemy_hive);

expl = instance_create_layer(killx[0], killy[0], "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;
expl.splitMore = 0;
alarm_set(9, 9);

var controller_exists = instance_exists(controller);
if (controller_exists) with (controller) kills += 3;
//alarm_set(5, 1);
var flameKills = 0;
for (var i = 0; i < 3; i++)
	if (flameKill[i])
		flameKills++;
if (flameKills < 1) exit

global.flameKills += flameKills;
global.flameWaveKills += flameKills;
//End current wave if combo is big enough
if (global.flameWaveKills == global.waveEndCombo)
	with (obj_spawner) {
		global.flameWaveKills = 0;
		alarm_set(1, 1);
		alarm_set(9, 1);
		alarm_set(10, 100);
	}

var player_exists = instance_exists(obj_tank_pilot);
if (player_exists)
	with (obj_tank_pilot) {
		/*if (flame_dir > 0) direction -= 50;
		if (flame_dir < 0) direction += 50;
		flame_dir *= -1;*/
		combo = true;
		if (flameHeals < 0) flameHeals = 0;
		flameHeals += 10 * flameKills;
		var hp = 100 - damage;
		if (hp + flameHeals > 100) flameHeals = 100 - hp;
		if (flameHeals < 0) flameHeals = 0;
	}
//Flame kills 10 to 99 boost speed
var wheels_exist = instance_exists(obj_tank_move_flame);
if (wheels_exist && global.flameKills > 9 && global.flameKills < 100) {
	obj_tank_move_flame.top_speed_boost += .006 * flameKills;
	global.flameSpeedBoost += .007 * flameKills;
} else if (wheels_exist && global.flameKills == 100) {
	obj_tank_move_flame.top_speed_boost += .006 * (flameKills - 1);
	global.flameSpeedBoost += .007 * (flameKills - 1);
} else if (wheels_exist && global.flameKills == 101) {
	obj_tank_move_flame.top_speed_boost += .006 * (flameKills - 2);
	global.flameSpeedBoost += .007 * (flameKills - 2);
}
//Flame kills 100 and above heal .1 damage
if (player_exists && global.flameKills >= 100 && obj_tank_pilot.damage > 0)
	obj_tank_pilot.damage -= (global.flameKills mod 10) * .05 * flameKills;


var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) {
	with (obj_tank_pilot) if (flameHeals < 0) flameHeals = 0;
}

var controller_exists = instance_exists(controller);
if (controller_exists) {
	with (controller) alarm_set(2, 79);
}
var boss_controller_exists = instance_exists(obj_boss1_controller);
if (boss_controller_exists) {
	with (obj_boss1_controller) alarm_set(2, 79);
}