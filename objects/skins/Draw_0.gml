draw_set_font(font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

draw_text(100, 40, "player A")
draw_text(400, 40, "player B")

var i = 0;
repeat(my_skins * 2){
	
	if ((menu_index == i) and (i < my_skins))
	    //Drawing menu pointer on the left column
	    if (player = 1)
	    {	    
		    draw_sprite(pointer_spr, 1, menu_x-40, menu_y + 40 * (i mod my_skins));	
			cur_x = menu_x-40;
			cur_y = menu_y + 40 * (i mod my_skins);
	    }
		else
		{
			//Drawing menu pointer on the right column
		    draw_sprite(pointer_spr, 1, menu_x-40 + 300, menu_y + 40 * (i mod my_skins));	
		    cur_x = menu_x-40 + 300;
			cur_y = menu_y + 40 * (i mod my_skins);
		}
		
		//Drawing sprites in two columns
		draw_sprite(skin[i mod my_skins], image_index, menu_x, menu_y + (i mod my_skins)*40);
	    draw_sprite(skin[i mod my_skins], image_index, menu_x + 300, menu_y + (i mod my_skins)*40);
	  
	i++;
}

image_speed = 0.15;

//Drawing borders
draw_sprite(border_spr, image_index, global.border_A_x, global.border_A_y)
draw_sprite(border_spr, image_index, global.border_B_x, global.border_B_y)