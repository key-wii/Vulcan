if (owner != id) with (owner) {
	particleMachine = instance_create_layer(x, y, "Enemy_UI", obj_particles_slime_trail);
	particleMachine.owner = id;
	particleMachine.direction = direction + 180;
}

instance_destroy();