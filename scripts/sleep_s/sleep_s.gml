function sleep_s() {
	var ms = argument[0]; //milliseconds?
	var t = current_time + ms;
	while (current_time < t) for (var i = 0; i < ms; i++) var k = 1;
}