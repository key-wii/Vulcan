if (!chargeUnlocked) exit;
if (flaming) exit;
if (!instance_exists(obj_tank_move_flame)) {
	//hold shoot then let go to launch grenade
	grenadeCharge++;
	if (grenadeCharge == 49)
		audio_play_sound(snd_charge, false, false);
	//slow down combo end countdown while holding
	if ((global.flameKills >  0 && grenadeCharge >  1 && grenadeCharge mod 5 == 0) ||
		(global.flameKills == 0 && grenadeCharge > 50 && grenadeCharge mod 5 == 0)) {
		var controller_exists = instance_exists(controller);
		if (controller_exists)
			with (controller)
				alarm_set(2, alarm_get(2) + 4);
		var boss_controller_exists = instance_exists(obj_boss1_controller);
		if (boss_controller_exists)
			with (obj_boss1_controller)
				alarm_set(2, alarm_get(2) + 4);
		}
}