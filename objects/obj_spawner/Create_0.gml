alarm_set(0, 1);
/*image = 0;
imageUp = false;*/
skip = false;
nw = obj_nextwave;
returnToMenu = false;
maxCheckpoint = 0;

waveCount = 0;

global.wave = 1;
global.waveCount = 1;
maxEnemies = 10;


	   if (global.level == 4) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), $CC6AC8);
} else if (global.level == 5) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), $2EB24D);
} else if (global.level == 6) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), $995655);
} else if (global.level == 7) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), $666024);
} else if (global.level == 9) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), color_get_hue($99CDFF));
}