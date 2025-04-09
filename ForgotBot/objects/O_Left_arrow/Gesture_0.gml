// play move sound
// sound name, priority, loop, gain, offset, pitch, listener_mask
audio_play_sound(A_Bot_move, 1, false, 1.0,0,random_range(.5, 1.1));

O_HUD_transition1.visible= true;
O_HUD_transition1.image_alpha= .8;
alarm_set(0,6);

// -------------------------------------------------------------------Start House Bedroom Hall----------------------------------------------------------------------

if room= R_bedHall1
    room_goto(R_bedHall2);

if room= R_bedHall11
    room_goto(R_restroom2);

if room= R_restroom1
    room_goto(R_bedStairs1);

if room= R_bedStairs1
    room_goto(R_bedHall12);

if room= R_bedHall5
    room_goto(R_bedHall8);

// -------------------------------------------------------------------Start House Restroom----------------------------------------------------------------------

if room= R_restroom2
    room_goto(R_restroom_mirror);

if room= R_restroom_mirror
    room_goto(R_restroom6);



// -------------------------------------------------------------------Start House Main Floor----------------------------------------------------------------------
if global.taskComplete_payRespects = false{
    if room= R_mainFloor1
        room_goto(R_mainFloor2);
}


if room= R_mainFloor5
    room_goto(R_mainFloor3);

if room= R_mainFloor3
    room_goto(R_mainFloor6);

if room= R_mainFloor7
    room_goto(R_bedStairs5);

if room= R_mainFloor4
    room_goto(R_mainFloor3);

if room= R_bedStairs3
    room_goto(R_bedStairs5);

if room= R_mainFloor6
    room_goto(R_mainFloor5);

// -------------------------------------------------------------------Start House Dog Downstairs----------------------------------------------------------------------
if global.taskComplete_payRespects = false{
    if room= R_downstairs_13
        room_goto(R_downstairs_1);
}


// ---------------------------------------------------------------------------Church----------------------------------------------------------------------

if room= R_church_R6
    room_goto(R_church_R7);

if room= R_church_4
    room_goto(R_church_L1);

if room= R_church_6
    room_goto(R_church_2L_1);

// -------------------------------------------------------------------2nd Area-----------------------------------------------------------------------------------

// -------------------------------------------------------------------Hunt----------------------------------------------------------------------------------- 

if room= R_Hunt_stairwell_2
    room_goto(R_Hunt_stairwell_4);

if room= R_Hunt_stairwell_4
    room_goto(R_kitchen_windowHall_4);

if room= R_Hunt_phone_3
    room_goto(R_Hunt_phone_4);

if global.taskComplete_makeTea1 = false{
    if room= R_Hunt_TV_1
        room_goto(R_Hunt_TV_2);
}

if global.taskComplete_makeTea1 = true{
    if room= R_Hunt_TV_1
        room_goto(R_Hunt_TV_2_on);
}

if room= R_Hunt_TV_4
    room_goto(R_Hunt_TVKitchen_1);

if room = R_Hunt_TVKitchen_1b
    room_goto(R_Hunt_TV_7);

if room = R_Hunt_TV_4_on
    room_goto(R_Hunt_TV_6);

if room = R_Hunt_phone_6{
    room_goto(R_Hunt_stairwell_5)
}

if room = R_Hunt_TV_9{
    room_goto(R_dining_1);
}

if room = R_Hunt_TV_2_on{
    room_goto(R_Hunt_phone_5);
}

if room = R_Hunt_TV_2{
    room_goto(R_Hunt_phone_5);
}



// -------------------------------------------------------------------Slender Forest------------------------------------------------------------

if room = R_slender_forest{
    global.slender_moved= false;
}

