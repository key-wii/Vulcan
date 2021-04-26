if (!debug) exit;
ini_open("saveData.ini");
ini_write_real("Bosses Beat", "boss 1 beat", true);
ini_close();