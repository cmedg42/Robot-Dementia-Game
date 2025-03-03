// play move sound
// sound name, priority, loop, gain, offset, pitch, listener_mask
audio_play_sound(A_Bot_move, 1, false, 1.0,0,random_range(.5, 1.1));

O_HUD_transition1.visible= true;
O_HUD_transition1.image_alpha= .8;
alarm_set(0,6);

// bedroom hall

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





//main floor

if room= R_mainFloor1
    room_goto(R_mainFloor2);

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

//downstairs

if room= R_downstairs_13
    room_goto(R_downstairs_1);


