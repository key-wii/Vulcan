if (!flaming && !flame_end && !grenading && shoot_rotate == 0 && !cutscene) {
	var ex, ey;
	ex = mouse_x;
	ey = mouse_y;
	direction = point_direction(x, y, ex, ey);
}
if (grenading == true) {
	if (flame_dir > 0) direction += 30;
	if (flame_dir < 0) direction -= 30;
}
if (shoot_rotate > 0) {
	var rot = 18;
	if (flame_dir > 0) direction += rot;
	if (flame_dir < 0) direction -= rot;
	shoot_rotate -= 1;
}
image_angle = direction;
if (image_angle mod 2 == 1) image_angle += 1;

var shrink;
with (controller) shrink = alarm_get(2)
if (shrink > 0 && shrink < 3) shrink = -25;
image_xscale = 1 - shrink / 300;
image_yscale = 1 - shrink / 300;

if (grenadeCharge > grenadeFullCharge && !flaming) {
	sprite_index = spPlayerTank_grenade;
	image_speed = 2;
}
if (grenadeCharge >= grenadeFullCharge - 1 && !flaming) {
	if (!instance_exists(particleMachine))
		particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_charged);
	if (instance_exists(particleMachine))
		if (particleMachine.emitting == false)
			with (particleMachine) alarm_set(1, 1);
}
if (devilSwingCharge > devilSwingFullCharge &&
	flaming && devil_trigger >= 200) {
		sprite_index = spPlayerTankFl_charged;
		image_speed = 2;
}
if (devilSwingCharge >= devilSwingFullCharge - 1 &&
	flaming && devil_trigger >= 199) {
		if (!instance_exists(particleMachine))
			particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_charged);
		if (instance_exists(particleMachine))
			if (particleMachine.emitting == false)
				with (particleMachine) alarm_set(1, 1);
}

var hp = 100 - damage;
if (global.boss_just_killed && hp >= -100 && hp <= 0 && lastChances > 0 && !combo && !healing) {
	lastChances -= (damage - 99) / 10;
	damage = 99;
} else if (!global.boss_just_killed && lastChances != 10) lastChances = 10;

//Radius before enemies stop and back away slowly changes as more enemies enter the radius
//Radius should not neccessarily be the same for every enemy
for (var i = 0; i < instance_number(obj_enemy_move_parent); i++) {
	var enemy = instance_find(obj_enemy_move_parent, i);
	if (enemy != noone && instance_exists(enemy.owner) && !enemy.owner.miniboss) {
		if (i < 10) with (enemy) radiusIncrease = 0;
		else if (i < 20) with (enemy) radiusIncrease = 64;
		else if (i < 30) with (enemy) radiusIncrease = 128;
		else if (i < 40) with (enemy) radiusIncrease = 192;
		else if (i < 50) with (enemy) radiusIncrease = 256;
	}
}

if (got_heart) {
	if (bull_hit_count < 39) bull_hit_count += 5;
	if (bull_hit_wait > 0) bull_hit_count += 1;
	if (sprite_index != spPlayerTank_heart) {
		sprite_index = spPlayerTank_heart;
		image_speed = 1;
	}
	global.tankpower = 10;
	if (!cutscene && post_heart > 0) {
		if (damage > 0) damage -= 10;
		if (damage < 0) damage = 0;
		post_heart--;
	}
}

if (prev_damage != damage) {
	if (prev_damage < damage) {
		global.damageTaken += damage - prev_damage;
	}
	prev_damage = damage;
}

clicked_ui = false;