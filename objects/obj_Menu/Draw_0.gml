/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_Menu, 0, x-margin, y-margin, widthFull,heightFull)

draw_set_colour(c_white);
draw_set_font(font_Silver);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


var _desc = !(description == -1);
for (i = 0; i < (optionsCount + _desc); i++)
{
	
	draw_set_colour(c_white);
	if (i == 0) && (_desc)
	{
		draw_text(x, y, description);
	}
	else
	{
		var _str = options[i-_desc][0];
		if (hover == i - _desc)
		{
			draw_set_colour(c_yellow);
			_str = hoverMarker+_str;
		}
		draw_text(x, y + i * heightLine, _str);
	}
}