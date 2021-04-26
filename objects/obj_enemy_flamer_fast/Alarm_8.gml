//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy();
} else {
	hitting = false;
}

//Spin
direction += spinSpd;

event_inherited();

alarm_set(8, 1);