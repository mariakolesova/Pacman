Player_B.way = !Player_B.way;

milk_counter.count++;
audio_play_sound(milk_drunk, 1, false);
instance_destroy();