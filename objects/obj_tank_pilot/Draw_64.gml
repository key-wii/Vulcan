draw_set_alpha(1);
draw_set_color(c_white);
var display = obj_camera.displayScale;

draw_set_halign(fa_left);

//list of enemies
/*draw_set_font(fnt_ammunition);
for (var i = 0; i < instance_number(obj_enemy_move_parent); i++) {
	var enemy = instance_find(obj_enemy_move_parent, i);
	if (enemy != noone) {
		var enemyO = instance_find(obj_enemy_move_parent, i).object_index;
		draw_text(20, 50 + 32 * i, "i" +  string(i) + " ob" + string(enemyO) + " id" + string(enemy));
	}
}*/

if (debug) with (controller) {
	if (drawStats) {
		draw_set_font(fnt_ammunition);
		draw_text(1200 * display, 40, "Time: " + string(global.time));
		draw_text(1200 * display, 100, string(minutes) + " : " + string(seconds));
		draw_text(1200 * display, 160, "Kills: " + string(global.kills));
		draw_text(1200 * display, 220, "Deaths: " + string(global.deaths));
		draw_text(1200 * display, 280, "Damage: " + string(global.damageTaken));
	}
}

if (room != room_menu) {
	var lv = global.level;
	draw_set_font(fnt_ammunition);
	if (lv != 9 && lv != -1 && global.checkpoint < 100) draw_text(500 * display, 28 * display, "Checkpoint: " + string(global.checkpoint));
	if ((lv > 0 && lv <= 3) || lv == -1) {
		//draw_text(500 * display, 10 * display, "Level: " + string(lv));
		var complete = false;
		if (lv == 1) {
			area = "Flames";
			if (lvBeat1) complete = true;
		} else if (lv == 2) { 
			area = "Candles";
			if (lvBeat2) complete = true;
		} else if (lv == 3) { 
			area = "Grenades";
			if (lvBeat3) complete = true;
		} else if (lv == -1) { 
			area = "The Cannibal";
			if (areaBeat1) complete = true;
			draw_text(500 * display, 28 * display, "Checkpoint: X");
		}
		draw_text(500 * display, 10 * display, "Level: " + area);
		draw_set_color(c_yellow);
		if (complete) draw_text((500 * display) + string_width("Level: " + area), 10 * display, " ★ Complete!");
	} else {
		var area = "";
		var boss = "";
		var complete = false;
		if (room == room_tutorial) area = "Zero";
		if (lv == 4) {
			area = "Dragon";
			if (areaBeat2) complete = true;
			switch (global.checkpoint) {
				case 101: boss = "Hydra"; break;
				case 102: boss = "YGB Triple Team"; break;
				case 103: boss = "The Tiamat"; break;
			}
		} else if (lv == 5) { 
			area = "Dizzy";
			if (areaBeat3) complete = true;
			switch (global.checkpoint) {
				case 101: boss = "Reflector Wall"; break;
				case 102: boss = "Red Wizard & Reflector Candle"; break;
				case 103: boss = "The Reflector"; break;
			}
		} else if (lv == 6) { 
			area = "Shield";
			if (areaBeat4) complete = true;
			switch (global.checkpoint) {
				case 101: boss = "Aegis"; break;
				case 102: boss = "Ajax"; break;
				case 103: boss = "The Aspidochelone"; break;
			}
		} else if (lv == 7) { 
			area = "Spiked";
			if (areaBeat5) complete = true;
			switch (global.checkpoint) {
				case 101: boss = "The Dancer"; break;
				case 102: boss = "Lord Slime"; break;
				case 103: boss = "The Cannibal"; break;
			}
		} else if (lv == 9) {
			area = "Final";
			if (debug) {
				draw_text(500 * display, 10 * display, "Level: " + area);
				draw_text(500 * display, 46 * display, "Wave: " + string(global.wave));
				draw_text(500 * display, 64 * display, "waveCount: " + string(global.waveCount));
				draw_text(500 * display, 82 * display, "halfCheckpoint: " + string(global.halfCheckpoint));
			} else {
				if (global.wave < 45) {
					draw_text(500 * display, 10 * display, "Level: " + area);
					draw_text(500 * display, 28 * display, "Wave: " + string(global.wave));
					for (var i = 0; i < global.waveCount - 1; i++)
						draw_text(500 * display + string_width("Wave: " + string(global.wave) + " ") + string_width("▮") * i, 28 * display, "▮");
					draw_text(500 * display, 46 * display, "Checkpoint: " + string(global.checkpoint + global.halfCheckpoint + 1));
				}
			}
			if (areaBeat9) complete = true;
		}
		if (global.checkpoint > 100) draw_text(500 * display, 28 * display, "Checkpoint: " + boss);
		if (lv != 9) draw_text(500 * display, 10 * display, "Level: " + area);
		draw_set_color(c_yellow);
		var show = true;
		if (lv == 9 && global.wave >= 45) show = false;
		if (complete && show) draw_text((500 * display) + string_width("Level: " + area), 10 * display, " ★ Complete!");
	}
}
/*draw_set_font(fnt_kill_count_5);
draw_set_color(c_orange);
draw_set_halign(fa_center);
draw_text(584 * display, 37 * display, string(global.waveEndCombo - global.flameWaveKills));
draw_set_color(c_white);
draw_set_halign(fa_left);*/

//draw bar for bullets destroyed with a full devil trigger
var charge_bar_edge = 1090.333333 * display;
var triggerLength = (1183 * display) - charge_bar_edge;
triggerLength *= (max_trigger / 200);
//charge_bar_edge = 1183 * display
x1 = 1183 * display - triggerLength; y1 = 17 * display;
x2 = 1183 * display - triggerLength - (bull_hit_count * 2 * (max_trigger / 200)); y2 = 46 * display;
if (devil_trigger == max_trigger) {
	if (bull_hit_count <= 30)
		draw_healthbar(x1, y1, x2, y2, 100 + (bull_hit_count * 2),
			$FF000000 & $FFFFFF, $F29D14 & $FFFFFF, $F29D14 & $FFFFFF,
			0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
	if (bull_hit_count > 30)
		draw_healthbar(x1, y1, x2, y2, 100 + (bull_hit_count * 2),
			$FF000000 & $FFFFFF, $0A0F9B & $FFFFFF, $0A0F9B & $FFFFFF,
			0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
}

x1 = 17; y1 = 17; x2 = 497 * display; y2 = 46 * display;
hp_x = 0;
livesDrawn = 0;
var heartSize = 40;
var hDisplay = .35;
//draw overkill
var hp = 100 - damage;
if (hp + flameHeals <= 0 && healAmount == 0) {
	var negaLives = (hp + flameHeals) * -1 / 10;
	draw_healthbar(x1, y1, x2, y2, damage - 100 - flameHeals, $0C0000, c_red && c_orange, c_red,
		0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
	while (negaLives > livesDrawn && livesDrawn < 10) {
		draw_sprite_stretched(spr_overkill, 0, 32 * hDisplay + hp_x, 32 * hDisplay,
			heartSize * display, heartSize * display);
		hp_x += 50 * display;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1 * display;
	}
} else {
	//draw healthbar
	draw_healthbar(x1, y1, x2, y2, 100 - damage - hp_draw_adjust,
	$FF000000, $41933C & $FFFFFF, $41933C & $FFFFFF,
	0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
	if (lives < 1 && damage < 100) {
		draw_sprite(spr_health, 0, 32 + hp_x, 32);
		hp_x += 50 * display;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1 * display;
	}
	while (lives > livesDrawn && livesDrawn < 10) {
		draw_sprite_stretched(spr_health, 0, 32 * hDisplay + hp_x, 32 * hDisplay,
			heartSize * display, heartSize * display);
		hp_x += 50 * display;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1 * display;
	}
	if ((hp + flameHeals >= 0) && combo) {
		var healHearts = flameHeals / 10;
		while ((lives <= livesDrawn || healing) && livesDrawn < lives + healHearts && livesDrawn < 10) {
			draw_sprite_stretched(spr_health, 1, 32 * hDisplay + hp_x, 32 * hDisplay,
				heartSize * display, heartSize * display);
			hp_x += 50 * display;
			livesDrawn += 1;
			if (livesDrawn = 5) hp_x += 1 * display;
		}
	}
	if (lives > livesDrawn && lives > 10) {
		draw_sprite_stretched(spr_smirkhuge_ethereal, 0, 32 * hDisplay + hp_x, 32 * hDisplay,
			heartSize * display, heartSize * display);
		hp_x += 50 * display;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1 * display;
	}
}

//draw devil trigger charges

var devil_bar = devil_trigger * (1 / (max_trigger / 100));
if (devil_bar < 0) devil_bar = 0;
//x1 = 1280 * display - triggerLength; y1 = 17; x2 = charge_bar_edge; y2 = 46 * display;
x1 = charge_bar_edge + (1183 * display) - charge_bar_edge; y1 = 17;
x2 = 1183 * display - triggerLength; y2 = 46 * display;
draw_healthbar(x1, y1, x2, y2, devil_bar,
	$FF000000 & $FFFFFF, $0A0F9B & $FFFFFF, $0A0F9B & $FFFFFF,
	0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
charge_x = 1120 * display;
chargesDrawn = 0;
var chargeSize = 34;
var cDisplay = .35;
while (charges > chargesDrawn && chargesDrawn < max_trigger / 100) {
	draw_sprite_stretched(spr_charge, 0, 20 * cDisplay + charge_x, 42 * cDisplay,
		chargeSize * display, chargeSize * display);
	charge_x -= 50 * display;
	chargesDrawn += 1;
	if (chargesDrawn = 5) charge_x -= 1 * display;
}
/*draw_set_alpha(1);
//draw bar for bullets destroyed with a full devil trigger
var charge_bar_edge = 1183 - (46 + (1/3)) * (max_trigger / 100);
if (devil_trigger == max_trigger) {
	x1 = charge_bar_edge - 6; y1 = 17; x2 = charge_bar_edge - 6 - (bull_hit_count * 2); y2 = 46;
	if (bull_hit_count <= 30)
		draw_healthbar(x1, y1, x2, y2, 100 + (bull_hit_count * 2),
			$FF000000 & $FFFFFF, $F29D14 & $FFFFFF, $F29D14 & $FFFFFF,
			0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
	if (bull_hit_count > 30)
		draw_healthbar(x1, y1, x2, y2, 100 + (bull_hit_count * 2),
			$FF000000 & $FFFFFF, $0A0F9B & $FFFFFF, $0A0F9B & $FFFFFF,
			0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
}

hp_x = 0;
livesDrawn = 0;
//draw overkill
if (overkill > 0) {
	var negaLives = (overkill - 100) / 10;
	x1 = 17; y1 = 17; x2 = 497; y2 = 46;
	draw_healthbar(x1, y1, x2, y2, (overkill - 100) / 10, $FF000000, c_red && c_orange, c_red,
		0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
	while (negaLives > livesDrawn && livesDrawn < 10) {
		draw_sprite(spr_overkill, 0, 32 + hp_x, 32);
		hp_x += 50;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1;
	}
} else {
	//draw healthbar
	x1 = 17; y1 = 17; x2 = 497; y2 = 46;
	draw_healthbar(x1, y1, x2, y2, 100 - damage - hp_draw_adjust,
	$FF000000, $41933C & $FFFFFF, $41933C & $FFFFFF,
	0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
	if (lives < 1 && damage < 100) {
		draw_sprite(spr_health, 0, 32 + hp_x, 32);
		hp_x += 50;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1;
	}
	while (lives > livesDrawn && livesDrawn < 10) {
		draw_sprite(spr_health, 0, 32 + hp_x, 32);
		hp_x += 50;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1;
	}
	while ((lives <= livesDrawn || healing) && livesDrawn < lives + global.flameKills && livesDrawn < 10) {
		draw_sprite(spr_health, 1, 32 + hp_x, 32);
		hp_x += 50;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1;
	}
	if (lives > livesDrawn && lives > 10) {
		draw_sprite(spr_smirkhuge_ethereal, 0, 32 + hp_x, 32);
		hp_x += 50;
		livesDrawn += 1;
		if (livesDrawn = 5) hp_x += 1;
	}
}

//draw devil trigger charges
x1 = 1183; y1 = 17; x2 = charge_bar_edge; y2 = 46;
draw_healthbar(x1, y1, x2, y2, devil_trigger * (1 / (max_trigger / 100)),
	$FF000000 & $FFFFFF, $0A0F9B & $FFFFFF, $0A0F9B & $FFFFFF,
	0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
charge_x = 1120;
chargesDrawn = 0;
while (charges > chargesDrawn && chargesDrawn < max_trigger / 100) {
	draw_sprite(spr_charge, 0, 32 + charge_x, 32);
	charge_x -= 50;
	chargesDrawn += 1;
	if (chargesDrawn = 5) charge_x -= 1;
}