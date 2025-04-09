O_taskBox.depth-=1;

if room = R_start{
    sprite_index=S_HUD_taskbox; 
}

if room = R_bed1{
    sprite_index=S_HUD_taskbox_wakeUp;
}


// Task: wake up--------------------------------------------------------------------------------------------------------- 
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


// Task: go to the bathroom--------------------------------------------------------------------------------------------------------- 
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

// Task: check on the Dog in the basement--------------------------------------------------------------------------------------------------------- 
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

// Task: feed the Dog with food from the kitchen--------------------------------------------------------------------------------------------------------- 
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

// Task: investigate the sound in the Basement after feeding the dog---------------------------------------------------------------------------------------------------------
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


// Task:  pay respects in the church--------------------------------------------------------------------------------------------------------- 
if global.tC_pay=false{
if global.taskComplete_payRespects = true{
    if (!audio_is_playing(A_Bot_taskChange_3))
    { 
        audio_play_sound(A_Bot_taskChange_3,2,false); 
    }
    sprite_index=S_HUD_taskbox_kitchenDoor; 
    global.tC_pay=true;
}
}

// Task:  unlock the door in the kitchen with a puzzle---------------------------------------------------------------------------------------------------------
if global.tC_kitDoor=false{
if global.taskComplete_unlockKitchenDoor = true{
    if (!audio_is_playing(A_Bot_taskChange_5))
    { 
        audio_play_sound(A_Bot_taskChange_5,2,false); 
    }
    sprite_index=S_HUD_taskbox_makeTea1;
    global.tC_kitDoor=true;
}
}

// Task:  make tea for thomas---------------------------------------------------------------------------------------------------------
if global.tC_makeTea1=false{
if global.taskComplete_makeTea1 = true{
    if (!audio_is_playing(A_Bot_taskChange_2))
    { 
        audio_play_sound(A_Bot_taskChange_2,2,false); 
    }
    sprite_index=S_HUD_taskbox_makeTea2;
    global.tC_makeTea1=true;
}
}

// Task:  find and fill the teapot ---------------------------------------------------------------------------------------------------------
if global.tC_makeTea2=false{
if global.taskComplete_makeTea2 = true{
    if (!audio_is_playing(A_Bot_taskChange_3))
    { 
        audio_play_sound(A_Bot_taskChange_3,2,false); 
    }
    sprite_index=S_HUD_taskbox_makeTea3;
    global.tC_makeTea2=true;
}
}

// Task:  heat the water ---------------------------------------------------------------------------------------------------------
if global.tC_makeTea3=false{
if global.taskComplete_makeTea3 = true{
    if (!audio_is_playing(A_Bot_taskChange_5))
    { 
        audio_play_sound(A_Bot_taskChange_5,2,false); 
    }
    sprite_index=S_HUD_taskbox_makeTea4;
    global.tC_makeTea3=true;
}
}

// Task:  find the tea and teacup---------------------------------------------------------------------------------------------------------
if global.tC_makeTea4=false{
if global.taskComplete_makeTea4 = true{
    if (!audio_is_playing(A_Bot_taskChange_1))
    { 
        audio_play_sound(A_Bot_taskChange_1,2,false); 
    }
    sprite_index=S_HUD_taskbox_makeTea5;
    global.tC_makeTea4=true;
}
}

// Task:  bring the tea to the TV room---------------------------------------------------------------------------------------------------------
if global.tC_makeTea5=false{
if global.taskComplete_makeTea5 = true{
    if (!audio_is_playing(A_Bot_taskChange_4))
    { 
        audio_play_sound(A_Bot_taskChange_4,2,false); 
    }
    sprite_index=S_HUD_taskbox_AnswerPhone;
    if global.taskComplete_answerPhone1=false{
        audio_play_sound(A_phone_ring_1,1,true);
    }
    global.tC_makeTea5=true;
}
}

// Task:  Answer the phone (1st time)---------------------------------------------------------------------------------------------------------
if global.tC_answerPhone1=false{
if global.taskComplete_answerPhone1 = true{
    if (!audio_is_playing(A_Bot_taskChange_3))
    { 
        audio_play_sound(A_Bot_taskChange_3,2,false); 
    }
    sprite_index=S_HUD_taskbox_checkMailbox;
    
    global.tC_answerPhone1=true;
}
}

// Task:  check the mailbox outside---------------------------------------------------------------------------------------------------------
if global.tC_checkMailbox=false{
if global.taskComplete_checkMailbox = true{
    if (!audio_is_playing(A_Bot_taskChange_2))
    { 
        audio_play_sound(A_Bot_taskChange_2,2,false); 
    }
    sprite_index=S_HUD_taskbox_run;
    global.tC_checkMailbox=true;
}
}

// Task:  run -------------------------------------------------------------------------------------------------------------------------------
if global.tC_run=false{
if global.taskComplete_run = true{
    if (!audio_is_playing(A_Bot_taskChange_1))
    { 
        audio_play_sound(A_Bot_taskChange_1,2,false); 
    }
    sprite_index=S_HUD_taskbox_unlockDiningDoors;
    global.tC_run=true;
}
}

// Task:  unlock the dining room double door ---------------------------------------------------------------------------------------------------------
if global.tC_unlockDiningDoor=false{
if global.taskComplete_unlockDiningDoor = true{
    if (!audio_is_playing(A_Bot_taskChange_5))
    { 
        audio_play_sound(A_Bot_taskChange_5,2,false); 
    }
    sprite_index=S_HUD_taskbox_restorePower;
    global.tC_unlockDiningDoor=true;
}
}

// Task:  restore the power from the breaker in the old house basement--------------------------------------------------------------------------------------------------------- 
if global.tC_restorePower=false{
if global.taskComplete_restorePower = true{
    if (!audio_is_playing(A_Bot_taskChange_2))
    { 
        audio_play_sound(A_Bot_taskChange_2,2,false); 
    }
    sprite_index=S_HUD_taskbox_AnswerPhone;
    global.tC_restorePower=true;
}
}

// Task:  Answer the phone (2nd time)---------------------------------------------------------------------------------------------------------
if global.tC_answerPhone2=false{
if global.taskComplete_answerPhone2 = true{
    if (!audio_is_playing(A_Bot_taskChange_3))
    { 
        audio_play_sound(A_Bot_taskChange_3,2,false); 
    }
    sprite_index=S_HUD_taskbox_comfortChild;
    
    global.tC_answerPhone2=true;
}
}

// Task:  comfort the child (unlock the baby room)---------------------------------------------------------------------------------------------------------
if global.tC_comfortChild=false{
if global.taskComplete_comfortChild = true{
    if (!audio_is_playing(A_Bot_taskChange_1))
    { 
        audio_play_sound(A_Bot_taskChange_1,2,false); 
    }
    sprite_index=S_HUD_taskbox_playTune;
    
    global.tC_comfortChild=true;
}
}

// Task:  play a soothing tune--------------------------------------------------------------------------------------------------------------
if global.tC_playTune=false{
if global.taskComplete_playTune = true{
    if (!audio_is_playing(A_Bot_taskChange_4))
    { 
        audio_play_sound(A_Bot_taskChange_4,2,false); 
    }
    sprite_index=S_HUD_taskbox_gatherLaundry;
    
    global.tC_playTune=true;
}
}

// Task:  gather Laundry-------------------------------------------------------------------------------------------------------------------
if global.tC_gatherLaundry=false{
if global.taskComplete_gatherLaundry = true{
    if (!audio_is_playing(A_Bot_taskChange_5))
    { 
        audio_play_sound(A_Bot_taskChange_5,2,false); 
    }
    sprite_index=S_HUD_taskbox_chuteDump;
    
    global.tC_gatherLaundry=true;
}
}

// Task:  dump the laundry -----------------------------------------------------------------------------------------------------------------
if global.tC_dumpChute=false{
if global.taskComplete_dumpChute = true{
    if (!audio_is_playing(A_Bot_taskChange_2))
    { 
        audio_play_sound(A_Bot_taskChange_2,2,false); 
    }
    sprite_index=S_HUD_taskbox_hotelRoom;
    
    global.tC_dumpChute=true;
}
}

// Task:  find the hotel room---------------------------------------------------------------------------------------------------------------
if global.tC_hotelRoom=false{
if global.taskComplete_hotelRoom = true{
    if (!audio_is_playing(A_Bot_taskChange_3))
    { 
        audio_play_sound(A_Bot_taskChange_3,2,false); 
    }
    sprite_index=S_HUD_taskbox_findWallet;
    
    global.tC_hotelRoom=true;
}
}

// Task:  dig a hole (find the wallet)---------------------------------------------------------------------------------------------------------
if global.tC_findWallet=false{
if global.taskComplete_findWallet = true{
    if (!audio_is_playing(A_Bot_taskChange_5))
    { 
        audio_play_sound(A_Bot_taskChange_5,2,false); 
    }
    sprite_index=S_HUD_taskbox_shooCows;
    
    global.tC_findWallet=true;
}
}

// Task:  shoo cows-------------------------------------------------------------------------------------------------------------------------
if global.tC_shooCows=false{
if global.taskComplete_shooCows = true{
    if (!audio_is_playing(A_Bot_taskChange_4))
    { 
        audio_play_sound(A_Bot_taskChange_4,2,false); 
    }
    sprite_index=S_HUD_taskbox_placeOrder;
    
    global.tC_shooCows=true;
}
}

// Task:  place the mcdonalds order---------------------------------------------------------------------------------------------------------
if global.tC_placeOrder=false{
if global.taskComplete_placeOrder = true{
    if (!audio_is_playing(A_Bot_taskChange_1))
    { 
        audio_play_sound(A_Bot_taskChange_1,2,false); 
    }
    sprite_index=S_HUD_taskbox; // next task here..........
    
    global.tC_placeOrder=true;
}
}