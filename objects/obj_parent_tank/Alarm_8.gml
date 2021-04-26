//spikes shoot off when taking damage

var hearts = floor((100 - damage) / 10);
var spikesShoot = lastSpikes - hearts;

if (weapon == 0) {
	var bullet = obj_shell;
	var spr = spr_shell_;
	var spd = 26;
}
else if (weapon == 1) {
	var bullet = obj_bouncer;
	var spr = spr_bouncer_;
	var spd = 16;
}
else if (weapon == 2) {
	var bullet = obj_rocket;
	var spr = spr_rocket_;
	var spd = 10;
}
for (i = 0; i < spikesShoot; i ++) {
	var ddir = direction + ((lastSpikes - i) * 36 - 36);
	var xx = lengthdir_x((sprite_width), ddir);
	var yy = lengthdir_y((sprite_width), ddir);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", bullet);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.orig_speed = spd;
	bull.sprite_index = spr;
	with (bull) alarm_set(0, 500);
}

lastSpikes = hearts;