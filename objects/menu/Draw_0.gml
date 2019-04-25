var i = 0
repeat(buttons){
	
	draw_set_font(font_main);
	//menu_y = 250;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);

	
	if (menu_index == i) 
		draw_sprite(pointer_spr, 1, menu_x - 70, menu_y + button_h * i);
	
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}
