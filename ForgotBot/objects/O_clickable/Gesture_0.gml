//instance_destroy(O_clickable);

// bedroom door 
if room= R_bedroom3{
    audio_play_sound(A_Atmo_door, 1, false, 1.0,0,1.3);
    room_goto(R_bedroom3_open);
    O_Bot_pointer.visible=false;
}

if room= R_bed2{
    room_goto(R_bedroom1);
    instance_destroy(O_clickable);
}


if room= R_kitchen2{
    room_goto(R_kitchen2_open);
    instance_destroy(O_clickable);
    O_Bot_pointer.visible=false;
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
        O_Bot_pointer.visible=false;
    }
    
    
}


// after kitchen puzzle door 
if room = R_kitchen_door_4{
    global.taskComplete_afterKitchen_door= true;
    room_goto(R_Hunt_stairwell_1);
    instance_destroy(O_clickable);
    audio_play_sound(A_Atmo_door, 1, false, 1.0,0,1.3);
    O_HUD_frame.visible=true;
    O_Bot_pointer.visible=false;
}


// tea table flashlight

if room = R_Hunt_TV_8{
    room_goto(R_Hunt_TV_8_flashlight);
    audio_play_sound(A_Bot_lightSwitch,1,false);
    instance_destroy(O_clickable);
}

// tea table cup

if room = R_Hunt_TV_8_flashlight{
    global.taskComplete_makeTea5=true;
    room_goto(R_Hunt_TV_8_flashlight_cup);
    audio_play_sound(A_Atmo_kettleOnStove,1,false);
    instance_destroy(O_clickable);
}

// phone1

if room = R_Hunt_phone_close_0{
    global.taskComplete_answerPhone1=true;
    room_goto(R_Hunt_phone_close_1);
    audio_stop_sound(A_phone_ring_1);
    audio_play_sound(A_Phone_answer_1,1,false);
    O_Bot_pointer.visible=false;
    instance_destroy(O_clickable);
}


// mailbox

if room = R_mail_outside_11{
    room_goto(R_mail_outside_12);
    audio_play_sound(A_Atmo_doorOpen2,1,false);
    O_Bot_pointer.visible=false;
    instance_destroy(O_clickable);
    instance_destroy(O_Bot_pointer);
}

// dining room door
if room = R_dining_door{
    if global.taskComplete_run=true{
        O_diningDoorPuzzle_zoom.visible=true;
        audio_play_sound(A_Bot_lightSwitch,1,false);
        O_Bot_pointer.visible=false;
        instance_destroy(O_clickable);
        instance_destroy(O_Bot_pointer);
        
    }
    
}

// breaker off, closed 
if room = R_old_breaker_closed_off{
    if global.taskComplete_unlockDiningDoor=true{
        room_goto(R_old_breaker_base);
        audio_play_sound(A_Atmo_doorOpen2,1,false);
        O_Bot_pointer.visible=false;
        instance_destroy(O_clickable);
        instance_destroy(O_Bot_pointer);
    }
    
}

// answer phone 2 
if room = R_old_on_phone_0{
    if global.taskComplete_answerPhone2=false{
        room_goto(R_old_on_phone_1);
        O_Bot_pointer.visible=false;
        global.taskComplete_answerPhone2=true;
        instance_destroy(O_clickable);
        instance_destroy(O_Bot_pointer);
    }
    
}
