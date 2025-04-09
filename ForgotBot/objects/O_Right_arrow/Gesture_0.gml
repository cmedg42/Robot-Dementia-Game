// play move sound
// sound name, priority, loop, gain, offset, pitch, listener_mask
audio_play_sound(A_Bot_move, 1, false, 1.0,0,random_range(.5, 1.1));

O_HUD_transition1.visible= true;
O_HUD_transition1.image_alpha= .8;
alarm_set(0,6);

// -------------------------------------------------------------------Start House Bedroom----------------------------------------------------------------------
if room= R_bedroom6
    room_goto(R_bedroom3_open);

// -------------------------------------------------------------------Start House Bedroom Hall----------------------------------------------------------------------
if room= R_bedHall5
    room_goto(R_bedHall6);

if room= R_bedHall11
    room_goto(R_bedHall10);

// -------------------------------------------------------------------Start House Restroom----------------------------------------------------------------------

if room = R_restroom1
    room_goto(R_restroom2);

if room = R_bedHall12
    room_goto(R_bedStairs1);

if room= R_restroom5
    room_goto(R_restroom_mirror);

if room= R_restroom_mirror
    room_goto(R_restroom3);

if room= R_restroom6
    room_goto(R_restroom_mirror);

// -------------------------------------------------------------------Start House Main Floor----------------------------------------------------------------------

if room = R_mainFloor4
    room_goto(R_mainFloor5);

if room = R_mainFloor7
    room_goto(R_mainFloor2);

if room = R_mainFloor6
    room_goto(R_mainFloor3);

// -------------------------------------------------------------------Start House Kitchen----------------------------------------------------------------------

if room= R_kitchen1
    room_goto(R_kitchen3);

if room= R_kitchen3
    room_goto(R_kitchen4);

// -------------------------------------------------------------------Start House Dog Downstairs----------------------------------------------------------------------

if room= R_downstairs_11
    room_goto(R_downstairs_10);

if room= R_downstairs_4
    room_goto(R_downstairs_12);

// ------------------------------------------------------------------------------Church----------------------------------------------------------------------

if room= R_church_4
    room_goto(R_church_R1);

if room= R_church_L6
    room_goto(R_church_L7);

if room= R_church_6
    room_goto(R_church_2R_1);


// -------------------------------------------------------------------2nd Area-----------------------------------------------------------------------------------

// -------------------------------------------------------------------Hunt----------------------------------------------------------------------------------- 

if room= R_Hunt_stairwell_2
    room_goto(R_Hunt_stairwell_3);

if room= R_Hunt_phone_1
    room_goto(R_Hunt_phone_4);

if room= R_Hunt_phone_6
    room_goto(R_Hunt_phone_2);

if room= R_Hunt_phone_3
    room_goto(R_Hunt_stairwell_5);

if room= R_Hunt_TV_4_on
    room_goto(R_Hunt_TV_8_flashlight_cup);

if room= R_Hunt_TV_9
    room_goto(R_Hunt_phone_5);

if room= R_Hunt_TV_1
    room_goto(R_dining_1);

// -------------------------------------------------------------------Slender Forest------------------------------------------------------------

if room = R_slender_forest{
    global.slender_moved= false;
}


// -------------------------------------------------------------------Old House------------------------------------------------------------


if room = R_old_off_1{
    room_goto(R_old_off_2);
}

if room = R_old_on_17{
    room_goto(R_old_on_18);
}
