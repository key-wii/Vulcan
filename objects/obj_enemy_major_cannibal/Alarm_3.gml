//heal at combo end
healing = true;
if (healed < healAmount) {
	healed += 5;
	damage -= 5;
	wheels.damage -= 5;
	alarm_set(3, 1);
}

if (damage < 0) {
	damage = 0;
	wheels.damage = 0;
	healing = false;
	healAmount = 0;
	healed = 0;
	alarm_set(3, 0);
}
if (healAmount <= healed) {
	healing = false;
	healAmount = 0;
	healed = 0;
	alarm_set(3, 0);
}