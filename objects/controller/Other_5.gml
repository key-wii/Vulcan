ini_open("saveData.ini");
ini_write_real("temp", "kills", global.kills);
ini_write_real("temp", "time", global.time);
ini_write_real("temp", "damage", global.damageTaken);
ini_write_real("temp", "deaths", global.deaths);
ini_close();