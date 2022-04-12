if (!lethal || damage > hp || owner.damage > hp || !instance_exists(obj_tank_pilot) ||
	!instance_exists(owner) || owner == id) exit;
var expl = instance_create_layer(x, y, "Explosions", obj_explosion_grenade_e);
if (owner.childrenLeft == 2) {
	if (global.level == 9) var dmg = 30;
	else if (obj_tank_pilot.damage < 10) var dmg = 89.5;
	else var dmg = 90;
	var scale = 4.5;
} else if (owner.childrenLeft == 1) {
	if (global.level == 9) var dmg = 20;
	else var dmg = 60;
	var scale = 2.5;
} else if (owner.childrenLeft == 0) {
	if (global.level == 9) var dmg = 11;
	else var dmg = 33;
	var scale = 2;
}
with (obj_tank_pilot) {
	damage += dmg;
	devil_trigger = 0;
}
expl.image_xscale = scale;
expl.image_yscale = scale;
expl.speed = 5;
expl.direction = direction;

owner.just_exploded = true;
instance_destroy();