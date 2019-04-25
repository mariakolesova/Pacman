//Determing whether the player moved around or not
if (text_index = 0)
{
    if keyboard_check_pressed(ord("D")) d_pressed = true;
    if keyboard_check_pressed(ord("A")) a_pressed = true;
    if keyboard_check_pressed(ord("W")) w_pressed = true;
    moving = d_pressed and a_pressed and w_pressed ;
    if moving text_index +=1;
}

//Has the player collected the berry
if (text_index = 1) and (Berry_count.count > 0){
    text_index +=1;
    created_berry = false;
}
  
//Has the player collected the candy
if (text_index = 2) and (candy_counter.count > 0)
    text_index +=1;
  
//Has the player collected all the milk
if (text_index = 3) and (milk_counter.count = 5)
    text_index +=1;
  
//Has the player collected all the cakes  
if (text_index = 4) and (cake_counter.count = 3)
    text_index +=1;

//Coffee has been collected
if (created_cat) and (!instance_exists(Coffee)){
    text_index += 1
    created_cat = false
}

//Deleting Cat from the map at the end of th training
if (Berry_count.count = 2) and (!finished)
{
	Cat.x = 1120;
	Cat.y = 680
   finished = true
   text_index +=1;
}
