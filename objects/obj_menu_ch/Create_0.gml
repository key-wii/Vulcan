event_inherited();
ch = 1;
sprite_index = spr_chapter_hit;

ini_open("saveData.ini");
	//Values will be set to false if there is no save file
if (file_exists("saveData.ini") == false) {
	ini_write_real("Levels Beat", "level 1 beat", false);
	ini_write_real("Levels Beat", "level 2 beat", false);
	ini_write_real("Levels Beat", "level 3 beat", false);
}
beat_level_1 = ini_read_real("Levels Beat", "level 1 beat", false);
beat_level_2 = ini_read_real("Levels Beat", "level 2 beat", false);
beat_level_3 = ini_read_real("Levels Beat", "level 3 beat", false);
var area_complete = ini_read_real("Bosses Beat", "boss 1 beat", false);
if (area_complete) default_sprite = spr_chapter_beat;
ini_close();