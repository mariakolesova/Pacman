Player_A.way = !Player_A.way;
score += 1;
milk_counter.count++;
audio_play_sound(milk_drunk, 1, false);
instance_destroy();