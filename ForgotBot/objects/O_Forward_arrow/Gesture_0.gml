O_HUD_transition1.visible= true;
O_HUD_transition1.image_alpha= .8;
alarm_set(0,6);


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

if room = R_bedroom1
    room_goto(R_bedroom2);

if room = R_bedroom2
    room_goto(R_bedroom3);

if room = R_bedroom3_open
    room_goto(R_bedHall1);

if room = R_bedroom6
    room_goto(R_bedroom7);


// bedroom hall

if room = R_bedHall1
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

if room = R_bedHall8
    room_goto(R_restroom1);

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









