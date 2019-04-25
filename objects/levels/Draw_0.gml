var i = 0;
repeat(buttons){
	
	draw_set_font(font_main);
	levels_y = 250;
	levels_x = 500;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);

	
	if (levels_index == i) 
		draw_sprite(pointer_spr, 1, levels_x - 100, levels_y + button_h * i);
		
	draw_text(levels_x, levels_y + button_h * i, button[i]);
	i++;
}
