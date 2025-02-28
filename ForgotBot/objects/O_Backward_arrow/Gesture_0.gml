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

//bathroom

if room= R_restroom4
    room_goto(R_restroom5);

if room= R_restroom2
    room_goto(R_bedHall12);


// main floor

if room= R_mainFloor5
    room_goto(R_mainFloor3);

// downstairs

if room= R_downstairs_8
    room_goto(R_cutscenes);

if room = R_downstairs_missing2
    room_goto(R_downstairs_doorOpen1);


// kitchen 

if room= R_kitchen2_open_food_gone
    room_goto(R_kitchen5);











