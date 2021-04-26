//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy(wheels);
	instance_change(obj_enemy_bomber_hit, true);
} else {
	hitting = false;
}

//Point at player
var wheels_exists = false;
wheels_exists = instance_exists(wheels);
var ran = random_range(-1, 1);
if (wheels_exists) if (wheels.just_spawned == false)
	direction = wheels.ddir + ran;

event_inherited();

alarm_set(8, 2);