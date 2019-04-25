draw_set_font(other_menu_font);
draw_set_color(c_black);

//Creating berry
if (text_index = 1) and (!created_berry)
{
    instance_create_layer(320, 480, "Instances", Bonus);
	created_berry = true;	
}

//Creating candy
if (text_index = 2) and (!created_candy)
{
    instance_create_layer(480, 600, "Instances", candy);
	created_candy = true;
}

//Creating 5 milk boxes
if (text_index = 3) and (!created_milk)
{   var i = 0;
	while (i < 5){		
	    instance_create_layer(880 - i * 40, 640, "Instances", milk);
		i++
	}
	created_milk = true;	
}

//Creating 3 cakes
if (text_index = 4) and (!created_cake)
{   
	var i = 0;
	while (i < 3){
	    instance_create_layer(640 - i * 40, 480, "Instances", Cake);
		i++
	}
	created_cake = true;
}

//Creating a Cat, 3 coffees and a final berry
if (text_index = 5) and (!created_cat)
{   
	instance_create_layer(520, 280, "Instances", Bonus);	
	instance_create_layer(880, 480, "Instances", Coffee);
	instance_create_layer(840, 480, "Instances", Coffee);
	instance_create_layer(800, 480, "Instances", Coffee);
	
	Cat.x = 400;
	Cat.y = 200; 

	created_cat = true;
}


draw_text(menu_x, menu_y, text[text_index]);
