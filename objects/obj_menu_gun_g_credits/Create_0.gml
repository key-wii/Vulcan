if (global.currentRoom == room_tutorial && global.checkpoint < 3)
	instance_destroy();
else visible = true;
event_inherited();
preview = spr_menu_preview_g;
text1 = "Bouncer Bullets";
text2 = "Dmg - 10 | 15 DPS";
text3 = "Speed - 100.00% (inital)";
text4 = "Reload - 100.00%";
text5 = "Effect: ";
text = text1 + text2 + text3 + text4 + text5;

col = c_lime;