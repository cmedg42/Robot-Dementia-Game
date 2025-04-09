// play clock sound
// sound name, priority, loop, gain, offset, pitch, listener_mask
//audio_play_sound(A_Atmo_clock, 1, true, 1.0,0);

//audio_play_sound(A_Atmo_quiet_cellblock_amb, 1, true, 1.0,0);








room_goto(R_Cutscene_intro);
/*
room_goto(R_dining_1);

global.taskComplete_wakeup = true;
global.taskComplete_firstDoorOpened = true;
global.taskComplete_bathroom= true;
global.taskComplete_CheckDog = true;
global.taskComplete_feedDog =true;
global.taskComplete_investigateBasement =true;
global.taskComplete_payRespects =true;
global.taskComplete_unlockKitchenDoor =true;
global.taskComplete_afterKitchen_door= true;
global.taskComplete_makeTea1 =true;
global.taskComplete_makeTea2 =true;
global.taskComplete_makeTea3 =true;
global.taskComplete_makeTea4 =true;
global.taskComplete_makeTea5 =true;
global.taskComplete_answerPhone1 =true;
global.tC_doorUnlockVideo= true;
global.taskComplete_checkMailbox =true;
global.taskComplete_run =true;
global.taskComplete_unlockDiningDoor=false;
global.taskComplete_restorePower=false;


O_HUD_frame.visible=true;
O_HUD_frame.depth=1;











//O_HUD_transition1.visible= false;
//O_taskBox.visible= true;
//O_HUD_frame.visible= true;
//O_Left_arrow.visible= true;
//O_Right_arrow.visible= true;
//O_Forward_arrow.visible= true;
//O_Backward_arrow.visible= true;
//O_Forward_arrow.depth-=1;
//O_Backward_arrow.depth-=1;
//O_Left_arrow.depth-=1;
//O_Right_arrow.depth-=1;
//instance_activate_all();
//instance_deactivate_object(O_startButton);