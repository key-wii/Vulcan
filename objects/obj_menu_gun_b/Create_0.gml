if (global.currentRoom == room_tutorial && global.checkpoint < 5)
	instance_destroy();
else visible = true;
event_inherited();
preview = spr_menu_preview_b;
text1 = "Homing Rockets";
text2 = "POW - 15 | 16.36 DPS";
text3 = "Speed - 62.50% (inital)";
text4 = "Reload - 72.75%";
text5 = "Effect: 150% homing speed";
text = text1 + text2 + text3 + text4 + text5;

col = c_blue;