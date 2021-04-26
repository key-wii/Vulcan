var hp = maxHp - damage;
if (hp <= critHp && desperationUsed == false && alarm_get(1) > 20) {
	alarm_set(1, 20);
}

//Die if health hits 0
if ((damage + 1) > maxHp && !combo && !healing) {
	instance_destroy();
} else {
	hitting = false;
}

if (flaming) {
	//Spin
	if (windup == 0) {
		flame = instance_create_layer(x, y, "Enemy", obj_flame_boss_e);
		flame.owner = id;
	}
	if (windup >= 0) {
		direction -= spinSpd * windup / maxWindup;
		windup -= 1;
	} else {
		direction += spinSpd;
		audio_play_sound(snd_flame, 0, 0);
	}
} else if (just_shot) {
	direction += 20;
	just_shot -= 1;
} else if (grenading) {
	direction += 30;
} else if (gunning &&
	instance_exists(enemyInSight) && enemyInSight != noone) {
		//Point at nearby enemy
		direction = point_direction(x, y, enemyInSight.x, enemyInSight.y);
} else if (gunning) {
	if (!instance_exists(obj_grenade_y_boss_e) && !just_shot_grenade && !desperationUsed) {
		charging = true;
		if (gun == yellow)
			sprite_index = spPlayerTankY_big_charged;
		if (gun == green)
			sprite_index = spPlayerTankG_big_charged;
		if (gun == blue)
			sprite_index = spPlayerTankB_big_charged;
	}
	//Point at player
	var player_exists = false;
	player_exists = instance_exists(obj_tank_pilot);
	if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
}

event_inherited();

alarm_set(8, 1);