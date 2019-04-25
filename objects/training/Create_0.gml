
finished = false
menu_y = 250;
menu_x =620

text_index = 0;

//Additional variables to detect whether spme objecys have been created or not
created_berry = false;
created_candy = false;
created_milk = false;
created_cake = false;
created_cat = false;

if global.mode = 1
{
    text[0] = "Hi there! Let's begin your how-to-play trainig now! \nPress W A S D buttons to move around!"
    text[6] = "So, once you have a cup of tea, you can make the Cats \nasleep and get past them safe and sound!\nTo do so, press SPACE button! \nBut be careful, the effect will last only for 3 of seconds! \n\nThe amount of tea cups u collected equals\n the amounts of times u can use it. \n\n Now, get closer to the Cat, press SPACE, make it asleep, \nrun through it and grub the berry!"     
}

else 
{
    text[0] = "Hi there! Let's begin your how-to-play trainig now! \nPress W A S D buttons to move around as a First Player, \n use arrow keys to move as a Second Player!"
    text[6] = "So, once you have a cup of tea, you can make the Cats \nasleep and get past them safe and sound!\nTo do so, Firsrt Player should press a SPACE button, \nand a Second Player should press Enter! \nBut be careful, the effect will last only for 3 of seconds! \n\nThe amount of tea cups u collected equals\n the amounts of times u can use it. \n\nNow, get closer to the Cat, make it asleep, \nrun through it and grub the berry!"     
}

text[1] = "Looks like u've got it :> \nGo and get that pink strawberry over there!"
text[2] = "Awesome! And now go for the candy!"
text[3] = "U r a fast learner, aren't u? \nOkay then, now go and get all the milk boxes."
text[4] = "Great! Now pay attention: \nSometimes you may find a cake! \nAnd while collecting it, u will not able to move for 2 seconds. \nTry and see yourself!"     
text[5] = "Halt! Careful now! See that Cat over there? \nU should never get close unless u wanna be eaten! :<\nNow I want u to collect that last strawbery up there. \nBut how do u get past that Cat? \n\nThere's one thing that can help u! \nGrab those cups of tea on your right!"        
text[7] = "Well done! Now u know everythong u need know about\nhow this world works!\nIn order to complete following levels just collect \nall the yummies and don't get killed ^^\nGood luck!\n\n(press ESC to go to the main menu)"

texts = array_length_1d(text);

moving = false;

//Detectord for pressed buttons
w_pressed = false;
s_pressed = false;
a_pressed = false;
d_pressed = false;


