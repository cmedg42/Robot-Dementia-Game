// play move sound
// sound name, priority, loop, gain, offset, pitch, listener_mask
audio_play_sound(A_Bot_move, 1, false, 1.0,0,random_range(.5, 1.1));

O_HUD_transition1.visible= true;
O_HUD_transition1.image_alpha= .8;
alarm_set(0,6);

//bedroom
if room= R_bedroom6
    room_goto(R_bedroom3_open);

//bedroom hall
if room= R_bedHall5
    room_goto(R_bedHall6);

if room= R_bedHall11
    room_goto(R_bedHall10);

// restroom 

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

// main floor

if room = R_mainFloor4
    room_goto(R_mainFloor5);

if room = R_mainFloor7
    room_goto(R_mainFloor2);

if room = R_mainFloor6
    room_goto(R_mainFloor3);

//kitchen

if room= R_kitchen1
    room_goto(R_kitchen3);

if room= R_kitchen3
    room_goto(R_kitchen4);

//downstairs

if room= R_downstairs_11
    room_goto(R_downstairs_10);

if room= R_downstairs_4
    room_goto(R_downstairs_12);

// church

if room= R_church_4
    room_goto(R_church_R1);

if room= R_church_L6
    room_goto(R_church_L7);

if room= R_church_6
    room_goto(R_church_2R_1);






