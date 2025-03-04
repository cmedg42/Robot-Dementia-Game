O_taskBox.depth-=1;

if room = R_start{
    sprite_index=S_HUD_taskbox; 
}

if room = R_bed1{
    sprite_index=S_HUD_taskbox_wakeUp;
}


// Task: wakeup 
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


// Task: bathroom 
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

// Task: checkDog
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

// Task: feedDog
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

// Task: investigateBasement
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