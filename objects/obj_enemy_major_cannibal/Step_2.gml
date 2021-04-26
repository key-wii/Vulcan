var shrink;
shrink = alarm_get(7);
if (shrink > 0 && shrink < 3) shrink = -25;
image_xscale = 1 - shrink / 300;
image_yscale = 1 - shrink / 300;

event_inherited();