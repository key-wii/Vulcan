//heal at combo end
if (healed < healAmount) {
	part_type_direction(global.PartHeal, direction - 10, direction + 10, 10, 3);
	part_type_size(global.PartHeal, .4, .4, .03, .02);
	part_particles_create(global.P_System, x, y, global.PartHeal, 1);
	healed += 5;
	damage -= 5;
	alarm_set(3, 1);
}

if (damage < 0) {
	damage = 0;
	healing = false;
	healAmount = 0;
	healed = 0;
	alarm_set(3, 0);
	var hp = 100 - damage
	lives = hp / 10;
}
if (healAmount <= healed) {
	healing = false;
	healAmount = 0;
	healed = 0;
	alarm_set(3, 0);
	var hp = 100 - damage;
	lives = hp / 10;
	if (spikesUnlocked) {
		var hearts = floor(hp / 10);
		lastSpikes = hearts;
	}
}