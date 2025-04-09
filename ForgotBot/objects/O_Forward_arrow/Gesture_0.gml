// play move sound
// sound name, priority, loop, gain, offset, pitch, listener_mask
audio_play_sound(A_Bot_move, 1, false, 1.0,0,random_range(.5, 1.1));


// flash screen with a transition effect. 
O_HUD_transition1.visible= true;
O_HUD_transition1.image_alpha= .3;
alarm_set(0,6);

// determine which room to move to. 
if room= R_start
    room_goto(R_bed1);


// -------------------------------------------------------------------Start House Sleeping in Bed----------------------------------------------------------------------
if room = R_bed1
    room_goto(R_bed2);

if room = R_bed2
    room_goto(R_bedroom1);


// -------------------------------------------------------------------Start House Bedroom----------------------------------------------------------------------
if room = R_bedroom7
    room_goto(R_bedroom_window);

if room = R_bedroom1{
    global.taskComplete_wakeup= true;
    
    if global.taskComplete_firstDoorOpened = false {
        room_goto(R_bedroom2);
    }
    else {
        room_goto(R_bedroom3_open)
    }
    
}

if room = R_bedroom2
    room_goto(R_bedroom3);


// -------------------------------------------------------------------Start House First Door opened----------------------------------------------------------------------
if room = R_bedroom3_open{
    global.taskComplete_firstDoorOpened= true;
    room_goto(R_bedHall1);
}

if room = R_bedroom6
    room_goto(R_bedroom7);


// -------------------------------------------------------------------Start House Bedroom Hall----------------------------------------------------------------------

if room = R_bedHall1
    room_goto(R_bedHall8);

if room= R_bedHall5
    room_goto(R_bedHall8);

if room = R_bedHall2
    room_goto(R_bedHall3);

if room = R_bedHall4
    room_goto(R_bedHall5);

if room = R_bedHall6
    room_goto(R_bedroom6);

if room = R_bedHall7
    room_goto(R_bedHall8);

// -------------------------------------------------------------------Start House Restroom---------------------------------------------------------------------- 

if room = R_bedHall8{
        room_goto(R_restroom1);
    audio_stop_sound(A_Atmo_clock);
}

 

if room = R_restroom2
    room_goto(R_restroom3);

if room = R_restroom3
    room_goto(R_restroom4);

if room = R_restroom5
    room_goto(R_restroom6);

if room = R_restroom6
    room_goto(R_bedHall12);

if room = R_bedHall10
    room_goto(R_bedHall6);

if room = R_bedHall12
    room_goto(R_bedHall10);


// -------------------------------------------------------------------Start House Bedroom Stairs---------------------------------------------------------------------- 

if room = R_bedStairs1
    room_goto(R_bedStairs2);

if room = R_bedStairs2
    room_goto(R_bedStairs3);

if room = R_bedStairs5
    room_goto(R_bedStairs4);

if room = R_bedStairs4
    room_goto(R_bedHall11);



// -------------------------------------------------------------------Start House Main Floor-----------------------------------------------------------------------------------

if room = R_bedStairs3
    room_goto(R_mainFloor1);

if room = R_mainFloor1
    room_goto(R_mainFloor4);

if room = R_mainFloor6
    room_goto(R_mainFloor7);

if room = R_mainFloor3
    room_goto(R_kitchen1);

// -------------------------------------------------------------------Start House Kitchen-----------------------------------------------------------------------------------

if room = R_kitchen4
    room_goto(R_mainFloor6);

if room = R_kitchen5
    room_goto(R_mainFloor6);

if room = R_kitchen_door_2
    room_goto(R_kitchen_door_3);

if room = R_kitchen_door_3
    room_goto(R_kitchen_door_4);

if room = R_kitchen1{
    room_goto(R_kitchen_door_1);
}

if room = R_kitchen_windowHall_4{
    room_goto(R_kitchen_windowHall_3);
}

if room = R_kitchen_windowHall_3{
    if global.taskComplete_answerPhone1=true{
        if global.taskComplete_run=false{
            room_goto(R_mail_kitchen_1);
        }
    }
    
    if global.taskComplete_run=true{
        room_goto(R_kitchen4);
    }
    
}

if room = R_mail_kitchen_1{
    room_goto(R_mail_kitchen_2);
}

if room = R_mail_kitchen_2{
    room_goto(R_mail_kitchen_3);
}

if room = R_mail_kitchen_3{
    room_goto(R_mail_outside_1);
}




   

// -------------------------------------------------------------------Dog Downstairs-----------------------------------------------------------------------------------
if global.taskComplete_payRespects = false{
    if room = R_mainFloor2
        room_goto(R_downstairs_1);
}


if room = R_downstairs_1
    room_goto(R_downstairs_3);

if room = R_downstairs_3
    room_goto(R_downstairs_4);

if room = R_downstairs_4
    room_goto(R_downstairs_6);

if global.taskComplete_CheckDog = false{
    if room = R_downstairs_6
        room_goto(R_downstairs_7); 
}

if global.taskComplete_CheckDog = true{
    if room = R_downstairs_6
        room_goto(R_downstairs_missing1); 
}

if room = R_downstairs_missing1
    room_goto(R_downstairs_missing2);

if room = R_downstairs_doorOpen1
    room_goto(R_downstairs_doorOpen2);

if room = R_downstairs_doorOpen2
    room_goto(R_basement_1);



// ------------------------------------------------------------------- Start House Basement-----------------------------------------------------------------------------------
if room = R_basement_1
    room_goto(R_basement_2);

if room = R_basement_3
    room_goto(R_basement_4);

if room = R_basement_4
    room_goto(R_basement_5);

if room = R_basement_5
    room_goto(R_basement_6);

if room = R_basement_6
    room_goto(R_basement_7);

if room = R_basement_7
    room_goto(R_basement_8);

if room = R_basement_8
    room_goto(R_basement_9);

if room = R_basement_9
    room_goto(R_basement_10);

if room = R_basement_10
    room_goto(R_basement_11);

if room = R_basement_11
    room_goto(R_basement_12);

if room = R_basement_12
    room_goto(R_basement_13);

if room = R_downstairs_7
    room_goto(R_downstairs_8);

if room = R_downstairs_9
    room_goto(R_downstairs_11);

if room = R_downstairs_10
    room_goto(R_downstairs_12);

if room = R_downstairs_12
    room_goto(R_downstairs_13);

if room = R_downstairs_13
    room_goto(R_mainFloor1);

// -------------------------------------------------------------------Church----------------------------------------------------------------------------------- 

if room= R_church_1
    room_goto(R_church_2);

if room= R_church_2
    room_goto(R_church_3);

if room= R_church_3
    room_goto(R_church_4);

if room= R_church_R1
    room_goto(R_church_R2);

if room= R_church_R2
    room_goto(R_church_R3);

if room= R_church_R3
    room_goto(R_church_R4);

if room= R_church_R4
    room_goto(R_church_R5);

if room= R_church_R5
    room_goto(R_church_R6);

if room= R_church_R7
    room_goto(R_church_R8);

if room= R_church_R8
    room_goto(R_church_R9);

if room= R_church_R9
    room_goto(R_church_5);

if room= R_church_5
    room_goto(R_church_6);

if room= R_church_L1
    room_goto(R_church_L2);

if room= R_church_L2
    room_goto(R_church_L3);

if room= R_church_L3
    room_goto(R_church_L4);

if room= R_church_L4
    room_goto(R_church_L5);

if room= R_church_L1
    room_goto(R_church_L2);

if room= R_church_L2
    room_goto(R_church_L3);

if room= R_church_L3
    room_goto(R_church_L4);

if room= R_church_L5
    room_goto(R_church_L6);

if room= R_church_L7
    room_goto(R_church_L8);

if room= R_church_L8
    room_goto(R_church_5);

if room= R_church_2L_1
    room_goto(R_church_2L_2);

if room= R_church_2R_1
    room_goto(R_church_2R_2);

if room= R_church_2R_2
    room_goto(R_church_7);

if room= R_church_2L_2
    room_goto(R_church_7);

// -------------------------------------------------------------------2nd Area-----------------------------------------------------------------------------------

// -------------------------------------------------------------------Hunt----------------------------------------------------------------------------------- 

if room= R_Hunt_stairwell_1
    room_goto(R_Hunt_stairwell_2);

if room= R_Hunt_stairwell_3
    room_goto(R_Hunt_phone_1);

if room= R_Hunt_stairwell_5
    room_goto(R_Hunt_stairwell_4);

if room= R_Hunt_phone_1
    room_goto(R_Hunt_phone_2);

if room= R_Hunt_phone_2
    room_goto(R_Hunt_TV_1);

if room= R_Hunt_phone_5
    room_goto(R_Hunt_phone_3);

if room= R_Hunt_TV_2
        room_goto(R_Hunt_TV_3);

if room= R_Hunt_TV_2_on
        room_goto(R_Hunt_TV_3_on);

if room= R_Hunt_TV_3
        room_goto(R_Hunt_TV_4);

if room= R_Hunt_TV_4
        room_goto(R_Hunt_TVKitchen_1);

if room= R_Hunt_TV_7
    room_goto(R_Hunt_TV_8);

if room= R_Hunt_TV_10
    room_goto(R_Hunt_TV_6);

if room= R_Hunt_TV_6
    room_goto(R_Hunt_TV_9);


if room= R_Hunt_TV_3_on
    room_goto(R_Hunt_TV_4_on);

if room= R_Hunt_TV_4_on
    room_goto(R_Hunt_TV_8_flashlight_cup);







// -------------------------------------------------------------------outside mail----------------------------------------------------------------------------------- 

if room = R_mail_kitchen_3{
    room_goto(R_mail_outside_1);
}

if room = R_mail_outside_1{
    room_goto(R_mail_outside_2);
}

if room = R_mail_outside_2{
    room_goto(R_mail_outside_3);
}

if room = R_mail_outside_3{
    room_goto(R_mail_outside_4);
}

if room = R_mail_outside_4{
    room_goto(R_mail_outside_5);
}

if room = R_mail_outside_5{
    room_goto(R_mail_outside_6);
}

if room = R_mail_outside_6{
    room_goto(R_mail_outside_7);
}

if room = R_mail_outside_7{
    room_goto(R_mail_outside_8);
}

if room = R_mail_outside_8{
    room_goto(R_mail_outside_9);
}

if room = R_mail_outside_9{
    room_goto(R_mail_outside_10);
}

if room = R_mail_outside_10{
    room_goto(R_mail_outside_11);
}

// -------------------------------------------------------------------Slender Forest------------------------------------------------------------------------------

if room = R_slender_forest_end_1{
    room_goto(R_slender_forest_end_2);
}

if room = R_slender_forest_end_2{
    room_goto(R_slender_forest_end_3);
}

if room = R_slender_forest_end_3{
    room_goto(R_slender_forest_end_4);
}

if room = R_slender_forest_end_4{
    room_goto(R_slender_forest_end_cutscene);
    global.taskComplete_run=true;
}

if room = R_slender_forest{
    global.slender_moved= false;
}


// -------------------------------------------------------------------old house------------------------------------------------------------------------------

if room = R_dining_1{
    room_goto(R_dining_2);
}

if room = R_dining_2{
    if global.taskComplete_answerPhone1=true{
        if global.taskComplete_unlockDiningDoor= false{
                if global.taskComplete_checkMailbox=true{
                    room_goto(R_dining_door);
                }
                
            }
            else{
                if global.taskComplete_restorePower= false{
                    room_goto(R_dining_door_open_off);
                }
                if global.taskComplete_restorePower= true{
                        room_goto(R_dining_door_open_on);
                    }
                
                
            }
    }
}

if room = R_dining_door_open_off{
    room_goto(R_old_off_1);
}

if room = R_old_off_2{
    room_goto(R_old_off_3);
}

if room = R_old_off_3{
    room_goto(R_old_off_4);
}

if room = R_old_off_4{
    room_goto(R_old_off_5);
}

if room = R_old_off_5{
    room_goto(R_old_off_6);
}

if room = R_old_off_6{
    room_goto(R_old_off_7);
}

if room = R_old_off_7{
    room_goto(R_old_off_8);
}

if room = R_old_off_8{
    room_goto(R_old_off_9);
}

if room = R_old_off_9{
    room_goto(R_old_off_10);
}

if room = R_old_off_10{
    room_goto(R_old_off_11);
}

if room = R_old_off_11{
    room_goto(R_old_off_12);
}

if room = R_old_off_12{
    room_goto(R_old_off_13);
}

if room = R_old_off_13{
    room_goto(R_old_off_14);
}

if room = R_old_off_14{
    room_goto(R_old_off_15);
}

if room = R_old_off_15{
    room_goto(R_old_off_16);
}

if room = R_old_off_16{
    room_goto(R_old_breaker_closed_off);
}


if room = R_dining_4{
    
    if global.taskComplete_makeTea5=true{
        room_goto(R_Hunt_TV_2_on);
    }
    
    if global.taskComplete_makeTea5=false{
         room_goto(R_Hunt_TV_2);
    }
}


if room = R_dining_3{
    room_goto(R_dining_4);
}



if room= R_old_on_1{
    room_goto(R_old_on_2);
}

if room= R_old_on_2{
    room_goto(R_old_on_3);
}

if room= R_old_on_3{
    room_goto(R_old_on_4);
}

if room= R_old_on_4{
    room_goto(R_old_on_5);
}

if room= R_old_on_5{
    room_goto(R_old_on_6);
}

if room= R_old_on_6{
    room_goto(R_old_on_7);
}

if room= R_old_on_7{
    room_goto(R_old_on_8);
}

if room= R_old_on_8{
    room_goto(R_old_on_9);
}

if room= R_old_on_9{
    room_goto(R_old_on_10);
}

if room= R_old_on_10{
    room_goto(R_old_on_11);
}

if room= R_old_on_11{
    room_goto(R_old_on_12);
}

if room= R_old_on_12{
    room_goto(R_old_on_13);
}

if room= R_old_on_13{
    room_goto(R_old_on_14);
}

if room= R_old_on_14{
    room_goto(R_old_on_15);
}

if room= R_old_on_15{
    room_goto(R_old_on_16);
}

if room= R_old_on_16{
    room_goto(R_old_on_17);
}

if room= R_old_on_18{
    if global.taskComplete_answerPhone2=false{
        room_goto(R_old_on_24);
    }
    if global.taskComplete_answerPhone2=true{
        room_goto(R_old_on_19);
        }
    
}

if room = R_old_on_24{
    room_goto(R_old_on_phone_0);
}

if room= R_old_on_19{
    room_goto(R_old_on_20);
}