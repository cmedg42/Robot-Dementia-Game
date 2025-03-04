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


// sleeping in bed
if room = R_bed1
    room_goto(R_bed2);

if room = R_bed2
    room_goto(R_bedroom1);


// bedroom
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


// first bedroom door opened
if room = R_bedroom3_open{
    global.taskComplete_firstDoorOpened= true;
    room_goto(R_bedHall1);
}

if room = R_bedroom6
    room_goto(R_bedroom7);


// bedroom hall

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

// bathroom 

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


// bed stairs 

if room = R_bedStairs1
    room_goto(R_bedStairs2);

if room = R_bedStairs2
    room_goto(R_bedStairs3);

if room = R_bedStairs5
    room_goto(R_bedStairs4);

if room = R_bedStairs4
    room_goto(R_bedHall11);



// main floor

if room = R_bedStairs3
    room_goto(R_mainFloor1);

if room = R_mainFloor1
    room_goto(R_mainFloor4);

if room = R_mainFloor6
    room_goto(R_mainFloor7);

if room = R_mainFloor3
    room_goto(R_kitchen1);

//kitchen

if room = R_kitchen4
    room_goto(R_mainFloor6);

if room = R_kitchen5
    room_goto(R_mainFloor6);
   

//downstairs

if room = R_mainFloor2
    room_goto(R_downstairs_1);

if room = R_downstairs_1
    room_goto(R_downstairs_3);

if room = R_downstairs_3
    room_goto(R_downstairs_4);

if room = R_downstairs_4
    room_goto(R_downstairs_6);

if global.taskComplete_CheckDog = false
    if room = R_downstairs_6
        room_goto(R_downstairs_7); 

if global.taskComplete_CheckDog = true{
    if room = R_downstairs_6
        room_goto(R_downstairs_missing1); 
}

if room = R_downstairs_missing1
    room_goto(R_downstairs_missing2);

if room = R_downstairs_doorOpen1
    room_goto(R_downstairs_doorOpen2);

if room = R_downstairs_doorOpen2
    room_goto(R_downstairs_doorOpen3);

if room = R_downstairs_doorOpen3
    room_goto(R_basement_1);


// basement
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

// church 

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


















