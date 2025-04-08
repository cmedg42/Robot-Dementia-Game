O_taskBox.depth-=1;

if room = R_start{
    sprite_index=S_HUD_taskbox; 
}

if room = R_bed1{
    sprite_index=S_HUD_taskbox_wakeUp;
}


// Task: wake up 
if global.tC_Wakeup=false{
if global.taskComplete_wakeup = true{
    if (!audio_is_playing(A_Bot_taskChange_1))
    { 
        audio_play_sound(A_Bot_taskChange_1,2,false); 
    }
    alarm_set(1,5);
    sprite_index=S_HUD_taskbox_bathroom; 
    global.tC_Wakeup=true;
}
}


// Task: go to the bathroom 
if global.tC_bathroom=false{
if global.taskComplete_bathroom = true{
    if (!audio_is_playing(A_Bot_taskChange_2))
    { 
        audio_play_sound(A_Bot_taskChange_2,2,false); 
    }
    sprite_index=S_HUD_taskbox_checkDog; 
    global.tC_bathroom=true;
}
}

// Task: check on the Dog in the basement 
if global.tC_CheckDog=false{
if global.taskComplete_CheckDog = true{
    if (!audio_is_playing(A_Bot_taskChange_3))
    { 
        audio_play_sound(A_Bot_taskChange_3,2,false); 
    }
    sprite_index=S_HUD_taskbox_feedDog; 
    global.tC_CheckDog=true;
}
}

// Task: feed the Dog with food from the kitchen 
if global.tC_feedDog=false{
if global.taskComplete_feedDog = true{
    if (!audio_is_playing(A_Bot_taskChange_4))
    { 
        audio_play_sound(A_Bot_taskChange_4,2,false); 
    }
    sprite_index=S_HUD_taskbox_investigateBasement; 
    global.tC_feedDog=true;
}
}

// Task: investigate the sound in the Basement after feeding the dog
if global.tC_iB=false{
if global.taskComplete_investigateBasement = true{
    if (!audio_is_playing(A_Bot_taskChange_1))
    { 
        audio_play_sound(A_Bot_taskChange_1,2,false); 
    }
    sprite_index=S_HUD_taskbox_payRespects; 
    global.tC_iB=true;
}
}


// Task:  pay respects in the church 
if global.tC_pay=false{
if global.taskComplete_payRespects = true{
    if (!audio_is_playing(A_Bot_taskChange_1))
    { 
        audio_play_sound(A_Bot_taskChange_1,2,false); 
    }
    sprite_index=S_HUD_taskbox_kitchenDoor; 
    global.tC_pay=true;
}
}

// Task:  unlock the door in the kitchen with a puzzle
if global.tC_kitDoor=false{
if global.taskComplete_unlockKitchenDoor = true{
    if (!audio_is_playing(A_Bot_taskChange_2))
    { 
        audio_play_sound(A_Bot_taskChange_2,2,false); 
    }
    sprite_index=S_HUD_taskbox; // next task undecided.........
    global.tC_kitDoor=true;
}
}