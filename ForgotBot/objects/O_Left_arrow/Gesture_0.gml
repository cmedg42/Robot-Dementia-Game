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
