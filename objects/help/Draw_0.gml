var i = 0
repeat(objects){
	draw_set_font(other_menu_font);
	draw_set_halign(fa_center);
	draw_set_color(c_red);
	draw_text(help_x, help_y + help_h * i, object_names[i]);
	
	draw_set_color(c_ltgray);
	draw_set_halign(fa_left);
	draw_text(help_x, help_y + 40 + help_h * i, text[i]);
	i++;
}