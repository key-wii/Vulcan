if (start) exit;
enemies = instance_number(obj_spawnerandenemyparent_parent);
     if (enemies < 4) timeline_position = 600;
else if (enemies < 6) timeline_position = 575;
else if (enemies < 8) timeline_position = 500;
else if (enemies < 10) timeline_position = 400;
else if (enemies < 12) timeline_position = 300;
else if (enemies < 14) timeline_position = 200;