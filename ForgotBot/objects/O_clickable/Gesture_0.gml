//instance_destroy(O_clickable);

// bedroom door 
if room= R_bedroom3{
    audio_play_sound(A_Atmo_door, 1, false, 1.0,0,1.3);
    room_goto(R_bedroom3_open);
}

if room= R_bed2{
    room_goto(R_bedroom1);
    instance_destroy(O_clickable);
}


if room= R_kitchen2{
    room_goto(R_kitchen2_open);
    instance_destroy(O_clickable);
}

// kitchen dog food door
if room= R_kitchen2_open{
    room_goto(R_kitchen2_open_food_gone);
    global.taskComplete_CheckDog=true;
    instance_destroy(O_clickable);
}
// basement flashlight switch
if room = R_basement_2{
    room_goto(R_basement_3);
    audio_play_sound(A_Bot_lightSwitch,1,false);
    instance_destroy(O_clickable);
    
}

// kitchen puzzle door?
if room = R_kitchen_door_1{
    if global.taskComplete_payRespects= true{
        audio_play_sound(A_Bot_lightSwitch,1,false);
        room_goto(R_Cutscene_kitchenPuzzleZoom);
        instance_destroy(O_clickable);
    }
    
    
}


// after kitchen puzzle door 
if room = R_kitchen_door_4{
    room_goto(R_kitchen_door_5);
    instance_destroy(O_clickable);
    audio_play_sound(A_Atmo_door, 1, false, 1.0,0,1.3);
}



