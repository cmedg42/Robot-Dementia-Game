if room= R_bedroom3
    room_goto(R_bedroom3_open);
instance_destroy(O_clickable);

if room= R_bed2
    room_goto(R_bedroom1);
instance_destroy(O_clickable);

if room= R_kitchen2
    room_goto(R_kitchen2_open);
instance_destroy(O_clickable);



if room= R_kitchen2_open{
    room_goto(R_kitchen2_open_food_gone);
instance_destroy(O_clickable); 
    global.taskComplete_CheckDog=true;
    
}


