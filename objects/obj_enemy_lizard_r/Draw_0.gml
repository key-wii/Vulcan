event_inherited();
image_angle = direction;

/*
var hPercent = 100 / maxHp;
__dnd_health = real(maxHp * hPercent - wheels.damage * hPercent);

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -15, y + -34, x + 15, y + -31, __dnd_health, $FFFF2340, $FF0000FF & $FFFFFF, $FF4C707F & $FFFFFF, 0, (($FFFF2340>>24) != 0), (($FFFF2340>>24) != 0));