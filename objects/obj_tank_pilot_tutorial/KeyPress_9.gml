if (!debug) exit;
ini_open("saveData.ini");
ini_write_real("Levels Beat", "tutorial beat", true);
ini_close();