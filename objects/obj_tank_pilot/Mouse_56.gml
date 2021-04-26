if (flaming) {
	if (devilSwingCharge >= devilSwingFullCharge && devil_trigger >= 200) {
		audio_play_sound(snd_change_rotation, false, false);
		audio_play_sound(snd_devil_swing, false, false);
		chargedSound = false;
		image_speed = .08;
		preDevilSwing = true;
		with (particleMachine) instance_destroy();
		particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_charged);
		with (particleMachine) owner = id;
		if (flame_dir > 0) {
			flame_dir = 1.3;
			alarm_set(5, 5);
			exit;
		}
		if (flame_dir < 0) {
			flame_dir = -1.3;
			alarm_set(5, 5);
			exit;
		}
		exit;
	}
}
if (flaming) exit;
//If held for long enough, shoot grenade
if (grenadeCharge >= grenadeFullCharge && !grenading) {
	grenading = true;
	audio_play_sound(snd_burst, 0, 0);
	alarm_set(4, 12);
	if (dragonUnlocked && dragon_shoot == 0) {
		timeline_index = timeline_player_dragonfly;
		timeline_loop = false;
		timeline_position = 0;
		timeline_running = true;
	}
} /*else if (can_shoot == 0 && grenadeCharge >= grenadeFullCharge - 20) {
	alarm_set(1, 1);
}*/
grenadeCharge = 0;
image_speed = .08;
with (particleMachine) instance_destroy();
particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_charged);
with (particleMachine) owner = id;

if (weapon == 0) sprite_index = spPlayerTankY;
if (weapon == 1) sprite_index = spPlayerTankG;
if (weapon == 2) sprite_index = spPlayerTankB;