event_inherited();
maxHp = 2900;
if (global.level == 9 && !global.hard) {
	maxHp = 1400;
	with (obj_enemy_fly_move_parent) leave = true;
	global.halfCheckpoint = global.checkpoint + .5;
}
//maxHp = 1;
/*damage = 990;
wheels.damage = damage;*/
/*spinSpd = -18;
topSpinSpd = 48;*/
wheels.hp = maxHp;
maxWindup = 40;

max_trigger = 600;
devil_trigger = max_trigger;
devil_refill = (max_trigger / 100) * .375;