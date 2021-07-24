function help_text() 
{
	text = text1 + text2;
	draw_set_font(-1);
										boxWidth = ceil(string_width(text1));
	if (string_width(text2) > boxWidth) boxWidth = ceil(string_width(text2));
	boxWidth *= 2.075;
	//if (boxWidth > 1330) boxWidth = 1330;
}