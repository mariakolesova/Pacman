//health = 1;
score = 0;
way = true;
speed_x = 0;
speed_y = 0;
start = false;
stop_flag = false;

global.room_from = room_get_name(room)  // What room are we currnlty are?
                                        // Needed for restarting level after dying
if (global.mode = 2)
    instance_create_depth(x - 40, y, "Instances", Player_B); // Create Second Player
