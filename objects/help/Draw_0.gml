var i = 0
help_x = 50;
help_y = 30;

repeat(objects){
	
	draw_set_font(other_menu_font);
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_text(help_x + 5, help_y + 40 + help_h * i + 10, text[i]);
	draw_sprite (sprites[i], image_index, help_x ,help_y + 40 + help_h * i);
    image_speed = 0.15;
	
	i++;
}

draw_set_font(font_main);
draw_sprite (PlayerA_left, image_index, help_x + 300, help_y + 40 + help_h * i);
draw_text(help_x + 330, help_y + 120 + help_h * 5, "+");
draw_sprite (cofee_spr, image_index, help_x + 360 ,help_y + 40 + help_h * i);
draw_text(help_x + 380, help_y + 120 + help_h * 5, " +  SPACE  = ");
draw_sprite (Cat_left, image_index, help_x + 520 ,help_y + 40 + help_h * i);
draw_text(help_x + 540, help_y + 120 + help_h * 5, " ---> ");
draw_sprite (Cat_sleeps_left, image_index, help_x + 600 ,help_y + 40 + help_h * i);

var i = 0;
repeat (array_length_1d(food)){
	
	draw_sprite (food[i], image_index, 800 + i*40, 40);
	i++
}
draw_set_font(other_menu_font);
draw_text(700, 70, " Eat all the yummies to colmplete the level!!");
image_speed = 0.15;