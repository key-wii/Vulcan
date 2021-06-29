if (shielding = true) {
	if (shield > 0) shield -= .5;
	if (shield < 30) shielding = false;
}
if (can_shoot < 0) can_shoot += 1;
if (dizzy_shoot < 0) dizzy_shoot += 1;
if (dragon_shoot < 0) dragon_shoot += 1;
if (devil_trigger < max_trigger) {
	devil_trigger += devil_refill;
	if (devil_trigger > max_trigger) devil_trigger = max_trigger;
	charges = floor(devil_trigger / 100);
}
if (bull_hit_count > 0 && bull_hit_wait == 0) {
	bull_hit_count -= 1;
}
if (bull_hit_count < 0) bull_hit_count = 0;
if (bull_hit_wait > 0) bull_hit_wait -= 2;
if (bull_hit_wait < 0) bull_hit_wait = 0;
if (ammunition = 0) rainbow = -1;

if (healing == true) exit;
if (damage < 100 && !combo) exit;
var hp = 100 - damage;
if (hp + flameHeals + healAmount > 0 && !combo) exit;
var negaDmg = damage - 100 - flameHeals;
if (combo == true && negaDmg <= 100) exit;
if (global.just_won) exit;
//Death
if (!global.death || (instance_exists(obj_fade_screen) && obj_fade_screen.i > 0)) exit;
if (global.level == 9) {
	ds_list_shuffle(global.finalSpawnList);
	if (global.checkpoint < 3 &&
		((global.wave >= 6 && global.wave <= 10) || (global.wave >= 16 && global.wave <= 20) || (global.wave >= 26 && global.wave <= 30) ||
		((global.wave == 11 || global.wave == 21 || global.wave == 31) && global.waveCount == 0))) {
			var temp = ds_list_create();
			var tempi = 0;
			for (var i = global.checkpoint; i < 4; i++) {
				ds_list_set(temp, tempi, global.finalMinibossesList[| i]);
				tempi++;
			}
			ds_list_shuffle(temp);
				tempi = 0;
			for (var i = global.checkpoint; i < 4; i++) {
				ds_list_replace(global.finalMinibossesList, i, temp[| tempi]);
				tempi++;
			}
			ds_list_clear(temp);
			ds_list_destroy(temp);
	}
}
room_speed = 20;
with(controller) { alarm_set(10, 3); }
instance_destroy();