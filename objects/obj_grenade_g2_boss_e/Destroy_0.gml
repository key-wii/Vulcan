if instance_exists(particleMachine) {
	particleMachine.owner = particleMachine.id;
	if (alarm_get(0) == 140) {
		with (particleMachine) instance_destroy();
	}
}