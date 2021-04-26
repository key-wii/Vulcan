if (devil_trigger < max_trigger) {
	devil_trigger += devil_refill;
	if (devil_trigger > max_trigger) devil_trigger = max_trigger;
}

event_inherited();