// play move sound
// sound name, priority, loop, gain, offset, pitch, listener_mask
audio_play_sound(A_Bot_move, 1, false, 1.0,0,random_range(.5, 1.1));

O_HUD_transition1.visible= true;
O_HUD_transition1.image_alpha= .8;
alarm_set(0,6);

//bedroom

if room= R_bedroom1
    room_goto(R_bedroom7);

if room= R_bedroom7
    room_goto(R_bedroom1);

if room= R_bedroom_window
    room_goto(R_bedroom1);

if room= R_bedroom2
    room_goto(R_bedroom6);

if room= R_bedroom6
    room_goto(R_bedroom2);

if room= R_bedroom3_open
    room_goto(R_bedroom6);



//bedroom hall

if room= R_bedHall1
    room_goto(R_bedroom3_open);

if room= R_bedHall2
    room_goto(R_bedHall5);

if room= R_bedHall3
    room_goto(R_bedHall4);

if room= R_bedHall4
    room_goto(R_bedHall3);

if room= R_bedHall5
    room_goto(R_bedHall4);

if room= R_bedHall7
    room_goto(R_bedHall1);

if room= R_bedHall6
    room_goto(R_bedHall1);

if room= R_bedHall12
    room_goto(R_restroom2);

if room= R_bedHall10{
    room_goto(R_restroom1);
}


if room= R_restroom1{
    audio_play_sound(A_Atmo_clock, 1, true, 1.0,0);
    room_goto(R_bedHall10);
}

if room= R_bedStairs2
    room_goto(R_bedStairs5);

if room= R_bedHall11
    room_goto(R_bedStairs1);

if room= R_bedStairs4
    room_goto(R_bedStairs2);



//bathroom

if room= R_restroom4{
    global.taskComplete_bathroom = true;
    room_goto(R_restroom5);
}

if room= R_restroom2
    room_goto(R_bedHall12);

if room= R_restroom5{
    room_goto(R_restroom4);
}



if room= R_restroom6
    room_goto(R_restroom3);


// main floor

if room= R_mainFloor5
    room_goto(R_mainFloor3);

if room= R_bedStairs5
    room_goto(R_bedStairs3);

if room= R_mainFloor1
    room_goto(R_mainFloor7);

if room= R_mainFloor7
    room_goto(R_mainFloor4);

if room= R_mainFloor4
    room_goto(R_mainFloor6);

if room= R_mainFloor2
    room_goto(R_mainFloor1);

// downstairs

if room= R_downstairs_8{
    global.taskComplete_CheckDog=true;
       room_goto(R_cutscenes);
    audio_stop_all();
}
 

if room = R_downstairs_missing2{
    global.taskComplete_feedDog=true;
    // play basement sound here
    room_goto(R_downstairs_doorOpen1);
}

if room = R_downstairs_1
    room_goto(R_downstairs_13);

if room = R_downstairs_12
    room_goto(R_downstairs_4);

// kitchen 

if room= R_kitchen2_open_food_gone
    room_goto(R_kitchen5);
   

if room= R_kitchen1
    room_goto(R_kitchen4);

// church

if room= R_basement_13{
    O_HUD_transition1.visible= true;
    O_HUD_transition1.image_alpha= 1;
    alarm_set(0,15);
    room_goto(R_church_1);
}














