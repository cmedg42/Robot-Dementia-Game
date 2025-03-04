
// bedroom door 
if room= R_bedroom3
    audio_play_sound(A_Atmo_door, 1, false, 1.0,0,1.3);
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

if room = R_basement_2{
    room_goto(R_basement_3);
    instance_destroy(O_clickable);
    audio_play_sound(A_Bot_lightSwitch,1,false);
    
}


