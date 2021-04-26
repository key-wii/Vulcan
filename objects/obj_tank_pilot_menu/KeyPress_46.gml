if (!debug) exit;
ini_open("saveData.ini");
ini_section_delete("Levels Beat");
ini_section_delete("Bosses Beat");
ini_close();