event_inherited();
miniboss = true;
image_angle = direction;

var hp = maxHp - damage;
var hpBracket = (maxHp / 30);
	 if (hp <= hpBracket * 2) image_index = 7;
else if (hp <= hpBracket * 7) image_index = 6;
else if (hp <= hpBracket * 11) image_index = 5;
else if (hp <= hpBracket * 15) image_index = 4;
else if (hp <= hpBracket * 20) image_index = 3;
else if (hp <= hpBracket * 25) image_index = 2;
else if (hp <= hpBracket * 29) image_index = 1;
else if (hp >  hpBracket * 29) image_index = 0;
/*if (instance_exists(obj_tank_pilot)) {
draw_healthbar(obj_tank_pilot.x - 550, obj_tank_pilot.y + 360, obj_tank_pilot.x + 550,
	obj_tank_pilot.y + 390, 100 - ((damage / maxHp) * 100), c_black, c_red, c_green, 0,
	($FFFFFFFF>>24) != 0, ($FFFFFFFF>>24) != 0);
}*/
/*
var hPercent = 100 / maxHp;
__dnd_health = real(maxHp * hPercent - wheels.damage * hPercent);

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -55, y + -55, x + 55, y + -50, __dnd_health, $FFFF2340, $FF0000FF & $FFFFFF, $FF4C707F & $FFFFFF, 0, (($FFFF2340>>24) != 0), (($FFFF2340>>24) != 0));